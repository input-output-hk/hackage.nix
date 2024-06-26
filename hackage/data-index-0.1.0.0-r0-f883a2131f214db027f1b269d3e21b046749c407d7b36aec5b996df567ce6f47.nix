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
      identifier = { name = "data-index"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ilya Pershin";
      maintainer = "pershin2010@gmail.com";
      author = "Ilya Pershin";
      homepage = "https://github.com/Toucandy/data-index#readme";
      url = "";
      synopsis = "Extending the concept of indices for lists and other containers";
      description = "Please see the README on GitHub at <https://github.com/Toucandy/data-index#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }