{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rasa"; version = "0.1.7"; };
      license = "MIT";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa#readme";
      url = "";
      synopsis = "A modular text editor";
      description = "A modular text editor\nThis is only a snippet, see the project's <https://github.com/ChrisPenner/rasa README>.\n\nRasa is a text editor project with a few interesting goals. For better or worse it attempts\nto be as modular as possible. This means that most functionality which would typically be considered to be 'core' in other editors\nis implemented as extensions in Rasa.\nThis approach comes with its own share of pros and cons, for instance:\n\n/Pros/\n\n* Implementing most core functionality as extensions ensures a powerful and elegant extension interface.\n\n* Flexibility; don't like the default cursor implementation? Write your own!\n\n* Adaptability; the core of Rasa is miniscule, you can mix and match extensions to build any editor you want.\n\n/Cons/\n\n* Module cross-dependencies makes the community infrastructure more fragile; We'll likely have to develop a solution to this as a community as time goes on.\n\n* Fragmentation; Not having a single implementation for a given feature means extensions that depend on a feature have to pick a specific implementation to augment. Over time data-structures and types will be standardized into Rasa's core to help alleviate this.\n\nWhile highly experimental, I've found the current API to be quite expressive and adaptable;\nfor instance I was able to implement the notion of multiple cursors using the extension API in less than a day. I hope to keep the learning curve low as development continues.\n\n/Getting Started/\n\nFirst clone the <https://github.com/ChrisPenner/rasa Github repo>\nand try running the example-config included there.\nOnce you get it running (see the <https://github.com/ChrisPenner/rasa/blob/master/README.md README>) then you\ncan customize your keymap to add a few mappings you like.\nThen I'd check out the\n<https://github.com/ChrisPenner/rasa/blob/master/docs/Building-An-Extension.md Building your own extensions guide>.\nIt goes in depth into everything you'd want to know!\n\nIf you have any issues (and I'm sure there'll be a few; it's a new project!) please report them <https://github.com/ChrisPenner/rasa/issues here> and we'll talk about it!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-lens" or (errorHandler.buildDepError "text-lens"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."yi-rope" or (errorHandler.buildDepError "yi-rope"))
        ];
        buildable = true;
      };
    };
  }