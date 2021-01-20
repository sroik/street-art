# ios-blueprint
A basic iOS template repository

## How to setup blueprint

- Create an Xcode project
- Replace `<TargetName>` with your actual target name

  - Plain find & replace should be enough
  - But if you want to be a bit fancier

    ```bash
    ./bin/replace.sh "<TargetName>" ActualName
    ```

- Replace `<project_id>` and `<project_info_id>` with your actual Phraseapp ids
- Same with `<AppIdentifier>`, replace it with your bundle identifier

You're ready to rock 🎸🤘

## I want to write code

No worries here, but before we'll torture your terminal once more

- You want to start with `bundle install` command
- Continue with `bundle exec pod install`
- Jump in Xcode `xed .` and have fun

## I want to debug on a device

Make sure the device's UUID has been added to the provision profiles. We've got a tool specifically for that. [Walter](https://github.com/pocket-ninja/walter)

The second step is installing the required provision profiles `bundle exec fastlane certificates`. For the said command to complete successfully we need a `match` password. It lives somewhere there is our Basecamp. Query the global search with a 'match password' and you'll be okay.

## Update localization strings

Kick-off your terminal of choice and drop to a project's root folder.

- Follow the instructions on [Phrase CLI Install](https://phrase.com/cli/)
- Run `phraseapp pull`
- There is no step three
# street-art
