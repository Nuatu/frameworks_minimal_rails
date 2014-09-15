#Programming Languages | Frameworks | Tags
This web app is built with Rails, Postgres, and Bootstrap. It features handwritten RESTful routes, a polymorphic join table, and explicit renders & redirects.

At [Epicodus](http://www.epicodus.com/) land <+> this app serves as [Nuatu Tseggai's](https://github.com/Nuatu) ["Rails basics assessment"](http://www.learnhowtoprogram.com/lessons/rails-basics-assessment) a.k.a Minimal Magic.
<ul>
<li>Charlie:
"Hey Frankie, what good is an app that can't be accessed from thin air? I dunno Charlie, let's ask Heroku."

<li>Heroku:
"Every amateur or professional app that someone took time to code deserves an address on th Interwebs.

<li>Frankie:
"But, but, but, does Heroku put their money where their mouth is?"
</ul>
You Be The Judge!

Livest app on the Interwebs: Now Serving ["Programming Languages + Frameworks"](http://languages-tags-frameworks.herokuapp.com/#)

It's like Butter Baby -- go ahead, add some tags, or some languages or some frameworks. Then click on one of the objects to associate tags with languages or frameworks.

[Heroku](https://www.heroku.com) for Super Strong Win


##Setup
In your terminal, clone this repo:

```console
https://github.com/Nuatu/frameworks_minimal_rails
```

Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

```console
$ postgres
```

Install all the dependencies:

```console
$ bundle install
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:schema:load
```

Finally, start the rails server:

```console
$ rails s
```
It should now be available at `localhost:3000`

OR Live app on the Interwebs: Heroku Serving << ["Programming Languages + Frameworks"](http://languages-tags-frameworks.herokuapp.com/#)

##Author
[Nuatu Tseggai](http://www.linkedin.com/in/nuatu)

##License
MIT
