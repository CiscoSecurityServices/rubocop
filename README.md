# rubocop
One rubocop config to rule them all

## Usage

Read about rubocop inheritance [here](http://rubocop.readthedocs.io/en/latest/configuration/#inheritance).

In your project's `.rubocop.yml` file, use `inherit_from:` on the first line to reference the central config file for your desired Ruby version:

```
inherit_from:
  - https://wwwin-github.cisco.com/raw/Corona/rubocop/master/rubocop-2.3.yml

# local settings here if you need them
```

By linking to the master branch of the rubocop repository, each project will automatically receive updates to the shared
configuration. This may cause subsequent PRs to fail until the new configuration is satisfied. However, "right this second"
is not always the best time to perform rubocop first aid on a codebase. If you find an ops pipeline is broken because of a
rubocop config update (e.g. PRs can't pass because of style issues), then use your judgement to select a path forward:

1. (preferred) Open a rubocop-update branch to address issues raised by the new config *apart* from any new feature development.
Then open (or merge those changes into) your feature branch.
1. Override the trouble-making setting in the project's local `.rubocop.yml` by setting the option after the `inherit_from` directive.
Follow up with a rubocop-update PR to comply with the new setting when you have a few minutes and need something easy to do.
1. (discouraged) Override the setting as in 2, but then just carry on living your life. There may be times when this is the right
course of action, but please be a good rubo-citizen and help the team keep its codebase clean and consistent.
