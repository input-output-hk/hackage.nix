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
      identifier = { name = "editor-open"; version = "0.4.0.2"; };
      license = "Apache-2.0";
      copyright = "Copyright 2015 Peter Harpending";
      maintainer = "peter@harpending.org";
      author = "Peter Harpending";
      homepage = "https://github.com/pharpend/editor-open";
      url = "";
      synopsis = "Open the user's $EDITOR for text input.";
      description = "You know when you run @git commit@, and an editor pops open so you can enter a\ncommit message? This is a Haskell library that does that.\n\nThis library isn't very portable. It relies on the @$EDITOR@ environment\nvariable. The concept only exists on *nix systems.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
      exes = {
        "editor-open-test_yaml_file" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."editor-open" or (errorHandler.buildDepError "editor-open"))
          ];
          buildable = true;
        };
      };
    };
  }