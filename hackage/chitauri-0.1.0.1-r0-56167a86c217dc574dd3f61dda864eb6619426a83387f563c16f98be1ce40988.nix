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
      identifier = { name = "chitauri"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Marcus Buffett";
      maintainer = "marcusbuffett@me.com";
      author = "Marcus Buffett";
      homepage = "https://github.com/marcusbuffett/chitauri";
      url = "";
      synopsis = "Helper for the Major System";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "chitauri" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."generic-trie" or (errorHandler.buildDepError "generic-trie"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."digits" or (errorHandler.buildDepError "digits"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."generic-trie" or (errorHandler.buildDepError "generic-trie"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
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