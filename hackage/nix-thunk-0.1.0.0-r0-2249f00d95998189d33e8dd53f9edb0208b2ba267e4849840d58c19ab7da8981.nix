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
      identifier = { name = "nix-thunk"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Obsidian Systems LLC 2020";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "Virtual vendorization with Nix";
      description = "nix-thunk lets you manage source code depencies in a lightweight and reproducible way, using Nix.  Each source repository is represented by a stub directory, which refers to the original Git repository.  nix-thunk can easily update these dependencies.\n\nIf you need to make improvements to the original repositories, nix-thunk can unpack them in-place, so that changes can be tested right away, and then pack them back up when you're done.  This makes it easy to send a pull request to the upstream repo while your project continues on a fork, then switch back to upstream once your pull request has been merged.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cli-extras" or (errorHandler.buildDepError "cli-extras"))
          (hsPkgs."cli-git" or (errorHandler.buildDepError "cli-git"))
          (hsPkgs."cli-nix" or (errorHandler.buildDepError "cli-nix"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."git" or (errorHandler.buildDepError "git"))
          (hsPkgs."github" or (errorHandler.buildDepError "github"))
          (hsPkgs."here" or (errorHandler.buildDepError "here"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."which" or (errorHandler.buildDepError "which"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "nix-thunk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nix-thunk" or (errorHandler.buildDepError "nix-thunk"))
            (hsPkgs."cli-extras" or (errorHandler.buildDepError "cli-extras"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }