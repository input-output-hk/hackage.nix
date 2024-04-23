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
      identifier = { name = "asynchronous-exceptions"; version = "1.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "roma@ro-che.info";
      author = "Roman Cheplyaka";
      homepage = "https://github.com/feuerbach/asynchronous-exceptions";
      url = "";
      synopsis = "Distinguish between synchronous and asynchronous exceptions";
      description = "This packages serves two purposes:\n\n* provide compatibility with older `base` versions (prior to 4.7) that\nlack the `SomeAsyncException` type\n\n* define convenient functions for catching only synchronous exceptions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }