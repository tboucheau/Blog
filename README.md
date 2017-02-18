# Planifier notre application

[![Code Climate](https://codeclimate.com/github/tboucheau/Blog/badges/gpa.svg)](https://codeclimate.com/github/tboucheau/Blog)

_J'ai effectué ce projet en me basant sur les vidéos de [Mackenzie Child](mackenziechild.me) et plus précisement sur sa série de 22 vidéos sur sa chaine Youtube sur ["comment créer un blog & un portfolio"](https://www.youtube.com/playlist?list=PL23ZvcdS3XPK9Y4DRU-BiJtiY5L_QhUUq). Ces vidéos sont simples, claires, et très bien expliquées. Je vous les conseil vivement !_

1. Questions
	- Qu'allons nous créer comme application ?
	- Pour qui allons nous créer cette application ?
	- De quelles fonctionnalités allons nous avoir besoin ?
2. Cas d'utilisations
3. Modélisation des Données
4. De quelles pages allons nous avoir besoin dans notre application ?

## Questions

1. Qu'allons nous créer comme application ?
Une application ou nous allons pouvoir blogger, partager des exemples de nos projets et ou les visiteurs pourront nous contacter

2. Pour qui allons nous créer cette application ?
Nous créons cette application pour nous, mais aussi pour la communautée. Le partage de ce que nous avons appris en bloggant est une excellente façon d'apprendre sur ce que nous faisons, et nous enseignons aux autres également par ce biais. Pour permettre aux employeurs de voir par eux-même ce que nous sommes capable de faire.

3. De quelles fonctionnalités allons nous avoir besoin ?
	- Posts
		- CRUD
		- Markdown
		- Syntax highlighting
		- Commentaires (avec Disqus)
	- Projects
		- CRUD
	- Contact
		- Formulaire de Contact
		- Sendgrid (si production sur Heroku - [ici oui](https://stark-springs-19065.herokuapp.com))
	- User (Devise)

## Cas d'utilisations
En tant que **<=>**, je souhaite être capable de **<=>**, pour que **<=>**.
- En tant qu'utilisateur, je souhaite être capable de créer des posts, pour partager ce que j'ai appris sur mon blog.
- En tant qu'utilisateur, je souhaite être capable d'éditer et supprimer des posts, pour qie je puisse gérer le blog.
- En tant qu'utilisateur, je souhaite être capable d'écrire les posts en Markdown, pour que ce soit plus facile à écrire et mettre en page.
- En tant qu'utilisateur, je souhaite être capable de mettre en avant les syntax des blocks de code pour que je puisse les partager facilement sur mon blog.
- En tant qu'utilisateur, je souhaite être capable de montrer aux visiteurs et aux employeurs potentiels des exemples de mon travail ou des projets que j'ai créé.
- En tant qu'utilisateur, je souhaite être capable de permettre aux visiteurs de me contacter par un formulaire sur mon site.
- En tant qu'utilisateur, je souhaite que les visiteurs puisse laisser des commentaires sur les posts.

## Modélisation des Données

**Post**
	title:string
	content:text

**Project**
	title:string
	description:text
	link:string

**User**
	géré par Devise

## De quelles pages allons nous avoir besoin dans notre application ?

- Home
- Posts#index
- Posts#Show
- Projects#index
- Projects#show
- Contact
