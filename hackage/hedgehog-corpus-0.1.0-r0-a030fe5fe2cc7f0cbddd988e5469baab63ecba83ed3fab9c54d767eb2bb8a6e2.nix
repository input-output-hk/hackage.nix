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
      identifier = { name = "hedgehog-corpus"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Tim McGilchrist ";
      maintainer = "Tim McGilchrist <timmcgil@gmail.com>";
      author = "Tim McGilchrist <timmcgil@gmail.com>";
      homepage = "https://github.com/tmcgilchrist/hedgehog-corpus";
      url = "";
      synopsis = "hedgehog-corpus";
      description = "Collection of strings for testing things.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }