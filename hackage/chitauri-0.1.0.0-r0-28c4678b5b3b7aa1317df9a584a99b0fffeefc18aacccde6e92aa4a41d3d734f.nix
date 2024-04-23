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
      identifier = { name = "chitauri"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/chitauri#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."generic-trie" or (errorHandler.buildDepError "generic-trie"))
          (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
        ];
        buildable = true;
      };
      exes = {
        "chitauri" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chitauri" or (errorHandler.buildDepError "chitauri"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."generic-trie" or (errorHandler.buildDepError "generic-trie"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."digits" or (errorHandler.buildDepError "digits"))
          ];
          buildable = true;
        };
      };
      tests = {
        "chitauri-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chitauri" or (errorHandler.buildDepError "chitauri"))
          ];
          buildable = true;
        };
      };
    };
  }