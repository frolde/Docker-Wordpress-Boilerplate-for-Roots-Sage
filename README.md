# Wordpress-Boilerplate for Roots/Sage
My default (https://www.docker.com/ "Docker")-(https://wordpress.org/ "Wordpress")-Boilerplate for (https://github.com/roots/sage "Roots/Sage")-based Theme- (or Plugin-) development.

## Installation
#### Docker setup
Run ```make start``` to start the docker and build the containers - after that, open your browser on http://localhost:8080 and finish installation.
 --> Can be used for Plugin-development by now. Custom written plugins need to be added to the `.gitignore`s exceptions.

#### Roots/Sage-setup
Install Roots/Sage by running ```make setup-roots-sage projectname="NEW_NAME"``` to `./src/themes/` by following the wizard.
--> Ready for theme development. `.gitignore` is extended by the theme.

## Make-Commands
``make start`` starts the containers<br>
``make stop`` stops the containers<br>
``make restart`` restarts the containers<br>
``make rebuild`` rebuilds the containers (keeps db)<br>
``make reset`` resets the containers completely (including db)<br>
``make shell`` runs the shell in wordpress-container

#### Roots/Sage-
``make browsersync`` starts browsersync<br>
``make theme-install`` updates node-modules<br>
``make theme-lint`` lints the assets<br>
``make theme-build`` builds frontend-assets<br>
``make theme-theme-build-production`` builds frontend-assets for production<br>
