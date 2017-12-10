# What's this?

Example of a minimal Rails API-only app, following JSON:API specification.

## Features

- Ruby on Rails 5 scaffolding with --api option
- JSON:API compliant API for CRUD users and posts that belong to them, with user authentication and item pagination, sorting and filtering
- active_model_serializers gem with :json_api adapter
- ActiveRecord migrations
- basic ApplicationRecord based models and belongs_to and has_many relationships
- routing to both resources and controller actions
- ActiveModel Serializers
- registering a new media type (application/vnd.api+json)
- providing related resources and links to entities and pagination items in API responses
- unit testing of all features using Minitest framework

# Built following this tutorial:

https://www.simplify.ba/articles/2016/06/18/creating-rails5-api-only-application-following-jsonapi-specification/