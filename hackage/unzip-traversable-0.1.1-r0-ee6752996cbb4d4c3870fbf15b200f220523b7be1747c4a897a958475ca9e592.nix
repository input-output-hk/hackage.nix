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
      specVersion = "3.0";
      identifier = { name = "unzip-traversable"; version = "0.1.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "David.Feuer@gmail.com";
      author = "David Feuer";
      homepage = "https://github.com/treeowl/unzip-traversable";
      url = "";
      synopsis = "Unzip functions for general Traversable containers";
      description = "This package provides functions for unzipping arbitrary `Traversable`\ncontainers.  Unlike the classic `Data.Functor.unzip`, these functions take\ncare to avoid space leaks that can cause elements to be retained when they\nare no longer actually accessible. Unlike a naive `Traversable`-based\nimplementation, each unzip walks the argument container only once. Both eager\nand lazy versions are included.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
        ];
        buildable = true;
      };
      tests = {
        "unzip-traversable-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."unzip-traversable" or (errorHandler.buildDepError "unzip-traversable"))
          ];
          buildable = true;
        };
      };
    };
  }