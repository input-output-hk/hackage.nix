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
      specVersion = "1.8";
      identifier = { name = "regexp-tries"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andreas Baldeau <andreas@baldeau.net>";
      author = "Andreas Baldeau";
      homepage = "http://github.com/baldo/regexp-tries";
      url = "";
      synopsis = "Regular Expressions on Tries.";
      description = "Regular Expressions on Tries.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."derive-trie" or (errorHandler.buildDepError "derive-trie"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."weighted-regexp" or (errorHandler.buildDepError "weighted-regexp"))
        ];
        buildable = true;
      };
    };
  }