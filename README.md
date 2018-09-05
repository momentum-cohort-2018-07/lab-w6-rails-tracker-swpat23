# CreatureTracker App 🐾

## Description

For this two-day project you will build an api-only application that lets a single user log creatures they are tracking, what they want to track, and keep notes about each creature. Be as creative as you'd like with this: your tracker might be a birding log, a list of dinosaurs, a Pokemon journal...

Basic CRUD functions should be available via your API: an api user should be able to retrieve a creature or note, add an entry for a new creature or note, and delete a creature or note. If you finish that, implement the functionality to edit creatures and notes and search for a creature based on url params.

### Models

A creature should have at least a name and/or a species (or a common name and a scientific name...you get the idea) and a status (this is up to you, but consider something indicating whether it has been seen or not yet seen).

A user should have the ability to add descriptive notes for each creature. A note should have at least a body.

The level of complexity is up to you, but plan to start small and be able to add features later on.

Please include some seed data (use the Faker gem if you like).

Implement the following endpoints:

- `GET /api/creatures` - return all creatures as JSON
- `GET /api/creatures/:id` - return an individual creature as JSON
- `POST /api/creatures` - create a new creature, return success/failure status codes
- `DELETE /api/creatures/:id` - delete creature, return success/failure status codes (this should delete all the associated notes as well -- see resources below)
- `GET /api/creatures/:id/notes` - return all notes for an individual creature
- `POST /api/creatures/:id/notes` - create a new note for a creature, return success/failure status code
- `DELETE /api/creatures/:id/notes/:id` - delete a note, return success/failure status code

Ensure that you return proper success/failure HTTP status codes based on the user input and results. For example, return a `200` status code if the operation was successful, `201` for created resource, or `404` if a resource with a given id cannot be found.

## Extra Challenges

### Edit creatures and notes

Implement endpoints to accept updated data for creatures and notes:

* `PUT /api/creatures/:id` - update a creature, return success/failure status code
* `PUT /api/creatures/:id/notes/:id` - update a note, return success/failure status code

### Implement searching, sorting, and filtering for `creature` resources

Modify the `GET /api/creatures` endpoint to support filtering, searching, and sorting resources by using query string parameters.

Implement the following endpoints:

- `GET /api/creatures?name=creatureName` - return all creatures that match a name query string
- `GET /api/creatures?seen=1` - return all seen creatures as JSON
- `GET /api/creatures?unseen=0` - return all unseen creatures as JSON
- `GET /api/creatures?sort=priority` - return all creatures as JSON sorted in some meaningful way, by priority, created/updated date, completed status, etc.s

#### Resources

- [See "Deleting from associations" in Active Record Associations docs](http://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html)
- [Using Rails for Api-only Applications in Rails Guides](http://guides.rubyonrails.org/api_app.html)
- [httpstatuses.com](https://httpstatuses.com)