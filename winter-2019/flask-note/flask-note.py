from flask_wtf import FlaskForm
from wtforms import TextAreaField, SubmitField
from wtforms.validators import DataRequired
from flask import Flask, render_template, session, redirect, url_for, flash
from flask_bootstrap import Bootstrap
from flask_sqlalchemy import SQLAlchemy
import click
import os

app = Flask(__name__)
db = SQLAlchemy(app)
bootstrap = Bootstrap(app)

app.config['SECRET_KEY'] = 'hard to guess string'   # 使用csrf
app.config['SQLALCHEMY_DATABASE_URI'] =\
    'sqlite:///' + os.path.join(app.root_path, 'data.sqlite')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

# 数据库模型
class Note(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    body = db.Column(db.Text)

# 创建数据库命令
@app.cli.command()
def initdb():
    db.create_all()
    click.echo('Initialized database')

# 表单
class NewNoteForm(FlaskForm):
    body = TextAreaField('Body', validators=[DataRequired()])
    submit = SubmitField('Save')

class EditNoteForm(FlaskForm):
    body = TextAreaField('Body', validators=[DataRequired()])
    submit =SubmitField('Update')

class DeleteFrom(FlaskForm):
    submit = SubmitField('Delete')


# 创建笔记
@app.route('/new', methods = ['GET', 'POST'])
def new_note():
    form =NewNoteForm()
    if form.validate_on_submit():
        body = form.body.data
        note = Note(body=body)
        db.session.add(note)
        db.session.commit()
        flash('you note is saved.')
        return redirect(url_for('index'))
    return render_template('new_note.html', form=form)

# 更新笔记
@app.route('/edit/<int:note_id>', methods=['GET', 'POST'])
def edit_note(note_id):
    form = EditNoteForm()
    note = Note.query.get(note_id)  # Note继承自数据库模型，支持查询
    if form.validate_on_submit():
        note.body = form.body.data
        db.session.commit()
        flash('Your note is updated')
        return redirect(url_for('index'))
    form.body.data = note.body  #对现有数据进行显示
    return render_template('edit_note.html', form=form)

# 删除笔记，为避免CSRF，需要用post方法实现删除，不能用get
@app.route('/delete/<int:note_id>', methods=['POST'])
def delete_note(note_id):
    form = DeleteFrom()
    if form.validate_on_submit():
        note = Note.query.get(note_id)
        db.session.delete(note)
        db.session.commit()
        flash('Your note is deleted')
    else:
        abort(400)
    return redirect(url_for('index'))

@app.route('/')
def index():
    form = DeleteFrom()
    notes = Note.query.all()
    return render_template('index.html', notes=notes, form=form)