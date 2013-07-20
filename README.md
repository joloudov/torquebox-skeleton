# torquebox-skeleton

[TorqueBox](http://torquebox.org/) application with TDD/BDD support. Accumulates primitives, hints and working practices.

## Overview

It is well known that test driven development of rails application with Jruby is a pain in fingers.
Mainly because of long JVM startup time and a lack of tools for accelerating ruby/rails runtime like spork or guard.
Nailgun was tested but it still takes up to 1 sec to start running tests.
The goal of the skeleton is to simplify but keep sustainable TDD/BDD process for TorqueBox platform.

OTB support for

* Rails 4
* TorqueBox 3.0.0
* Rspec
* Cucumber
* AngularJS
* Haml

Support for other 3-d parties will be added to the list upon commit.

## Requirements

* OS X
* Jruby >= 1.7.4
* Ruby >= 1.9.3

## Overview

The idea is to develop and test application with `Ruby` interpreter because testsunder `Jruby` are running very slow.
Application runs both on Jruby or Ruby so tests should be passed on both interpreters.
`Gemfile` contains two platform dependent blocks.
This allows to get rid of conflicts, mock gems, hacks and keep environments independent.
The basic ruby manager is `rvm` but skeleton doesn't contain any rvm-dependent code (yet).
For development|test purposes it's highly recommended to use `Ruby` interpreter.

`rake torquebox:restart [runtime]` allows to [redeploy TorqueBox in runtime](http://torquebox.org/documentation/3.0.0.beta1/deployment.html#zero-downtime-redeployment).

## Usage

Below is a general general TDD/BDD workflow

    `Term1$ rvm use jruby@torquebox`
    `Term1$ torquebox run`
    `Term2$ rvm use ruby-2.0.0@torquebox`
    `Term2$ vim spec/models/dummy_spec.rb`
    `Term2$ rspec`
    `Term2$ vim features/step_definitions/you_feature_steps.feature`
    `Term2$ cucumber`
    `Term2$ rake torquebox:restart all`
    `Term2$ open 'http://localhost:8080'`


## TODO

* TorqueBox generators
* Application generator
* Deployment process
* CI support
* Examples