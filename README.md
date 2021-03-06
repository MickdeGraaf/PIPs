# Pie Improvement Proposals (PIPs)

[![Gitter](https://img.shields.io/badge/Discord-Connect_with_the_community-green?logo=discord&style=flat)](https://piedao.org/discord)

Pie Improvement Proposals (PIPs) describe standards for the Ethereum platform, including core protocol specifications, client APIs, contract standards and protocol parameters.

A browsable version of all current and draft PIPs can be found on [the official PIP site](https://pips.piedao.org/).

# Contributing

 1. Review [PIP-1](PIPS/pip-1.md).
 2. Fork the repository by clicking "Fork" in the top right.
 3. Add your PIP to your fork of the repository. There is a [template PIP here](pip-template.md).
 4. Submit a Pull Request to Pie DAO's [PIPs repository](https://github.com/pie-dao/PIPs).

Your first PR should be a first draft of the final PIP. It must meet the formatting criteria enforced by the build (largely, correct metadata in the header). An editor will manually review the first PR for a new PIP and assign it a number before merging it. Make sure you include a `discussions-to` header with the URL to a discussion forum or open GitHub issue where people can discuss the PIP as a whole.

If your PIP requires images, the image files should be included in a subdirectory of the `assets` folder for that PIP as follows: `assets/pip-N` (where **N** is to be replaced with the PIP number). When linking to an image in the PIP, use relative links such as `../assets/pip-1/image.png`.

When you believe your PIP is mature and ready to progress past the draft phase, you should ask to have your issue added to the next governance call where it can be discussed and a vote can be started in the DAO. If the DAO votes yes on the proposal the PIP editors will update the state of your PIP to approved

# PIP Status Terms

* **Draft** - an PIP that is undergoing rapid iteration and changes.
* **Last Call** - an PIP that is done with its initial iteration and ready for review by a wide audience.
* **Accepted** - a core PIP that has been in Last Call for at least 2 weeks and any technical changes that were requested have been addressed by the author. The process for Core Devs to decide whether to encode an PIP into their clients as part of a hard fork is not part of the PIP process. If such a decision is made, the PIP will move to final.
* **Final (non-Core)** - an PIP that has been in Last Call for at least 2 weeks and any technical changes that were requested have been addressed by the author.
* **Final (Core)** - an PIP that the Core Devs have decided to implement and release in a future hard fork or has already been released in a hard fork. 

# Preferred Citation Format

The canonical URL for a PIP that has achieved draft status at any point is at https://pips.piedao.org/. For example, the canonical URL for PIP-1 is https://pips.piedao.org/PIPS/pip-1.

# Validation

PIPs must pass some validation tests.  The PIP repository ensures this by running tests using [html-proofer](https://rubygems.org/gems/html-proofer) and [pip_validator](https://rubygems.org/gems/pip_validator).

It is possible to run the PIP validator locally:
```sh
gem install pip_validator
pip_validator <INPUT_FILES>
```

# Automerger

The PIP repository contains an "auto merge" feature to ease the workload for PIP editors.  If a change is made via a PR to a draft PIP, then the authors of the PIP can GitHub approve the change to have it auto-merged by the [pip-automerger](https://github.com/pip-automerger/automerger) bot.

# Local development

## Prerequisites

1. Open Terminal.

2. Check whether you have Ruby 2.1.0 or higher installed:

```sh
$ ruby --version
```

3. If you don't have Ruby installed, install Ruby 2.1.0 or higher.

4. Install Bundler:

```sh
$ gem install bundler
```

5. Install dependencies:

```sh
$ bundle install
```

## Build your local Jekyll site

1. Bundle assets and start the server:

```sh
$ bundle exec jekyll serve
```

2. Preview your local Jekyll site in your web browser at `http://localhost:4000`.

More information on Jekyll and GitHub pages [here](https://help.github.com/en/enterprise/2.14/user/articles/setting-up-your-github-pages-site-locally-with-jekyll).
