# Job Board


## Getting Started

Install:

* [pkg-config](https://freedesktop.org/wiki/Software/pkg-config/)
* [CMake](https://cmake.org/)
* [Chromedriver](https://sites.google.com/a/chromium.org/chromedriver/downloads)

You can install these on OS X with [homebrew](https://brew.sh/) by running:

```shell
brew bundle
```

The skeleton app contains enough dependencies to satisfy the current functionality, but feel free to add more.

```shell
$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rails s
$ open http://localhost:3000
```

## Testing

The repo is configured with rspec, and includes tests in place for existing functionality.

To run the full test suite:
```shell
$ bundle exec rake
```

To run all tests in a specific file:
```shell
$ bundle exec rspec spec/models/job_posting_spec.rb
```

To run a specific test, or group of tests, within a file:
```shell
$ bundle exec rspec spec/models/job_posting_spec.rb:12
```

### Chrome Headless

Capybara is configured to run with Chrome Headless as the driver. In order to run Chrome Headless, you must have Chrome installed and also ChromeDriver.

On OS X, you may install ChromeDriver via homebrew `brew install chromedriver`.

### Switching out Capybara Driver

If you'd like to not run your tests headless, for example, to troubleshoot an issue and see what's on the screen, modify the `driven_by` driver in `spec/support/system_test_configuration.rb` to use `:selenium_chrome` instead of `:selenium_chrome_headless`. After the change, this block should look as follows:

```ruby
config.before(:each, type: :system, js: true) do
  driven_by :selenium_chrome
end

```

## JavaScript Framework Integration

### React

Use React by adding `<%= javascript_pack_tag 'hello_react' %>` to the head of your layout file,
like `app/views/layouts/application.html.erb`. All it does is render `<div>Hello React</div>` at the bottom
of the page.

### Angular

Use Angular by adding the following HTML markup to your view:

```
<hello-angular>Loading...</hello-angular>

<%= javascript_pack_tag 'hello_angular' %>
```

### Elm

Use Elm by adding `<%= javascript_pack_tag "hello_elm" %>` to the head of your layout
file, like `app/views/layouts/application.html.erb`. It will render "Hello Elm!" within the page.

### Vue

Use Vue by adding `<%= javascript_pack_tag 'hello_vue' %>` to the head of your layout file, like `app/views/layouts/application.html.erb`. All it does is render `<div>Hello Vue</div>` at the bottom of the page.

The above code uses Vue without the compiler, which means you cannot
use Vue to target elements in your existing html templates. You would
need to always use single file components.
To be able to target elements in your existing html/erb templates,
comment out the above code and uncomment the below
Add `<%= javascript_pack_tag 'hello_vue' %>` to your layout
Then add this markup to your html template:
```
<div id='hello'>
  {{message}}
  <app></app>
</div>
```

```
import Vue from 'vue/dist/vue.esm'
import App from './app.vue'

document.addEventListener('DOMContentLoaded', () => {
   const app = new Vue({
     el: '#hello',
     data: {
       message: "Can you say hello?"
     },
     components: { App }
   })
 })
```
