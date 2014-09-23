##Programming Languages | Frameworks | Tags
This web app is built with Rails, Postgres, and Bootstrap.

FeaturING handwritten RESTful routes, a polymorphic join table, and explicit renders & redirects.

IN [Epicodus](http://www.epicodus.com/) speak, this app serves as [Nuatu's] (https://github.com/Nuatu) Minimal Magic a.k.a ["Rails basics assessment"](http://www.learnhowtoprogram.com/lessons/rails-basics-assessment).

LIVE WEB APP: ["Programming Languages + Frameworks"](http://languages-tags-frameworks.herokuapp.com/#)

-- go ahead, add some tags, or some languages or some frameworks. Then click on one of the objects to associate tags with languages or frameworks.

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

OR ONLINE @: ["Programming Languages + Frameworks"](http://languages-tags-frameworks.herokuapp.com/#)


##Author
[Nuatu Tseggai](http://www.linkedin.com/in/nuatu)

##License
MIT
