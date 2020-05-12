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
      identifier = { name = "tiempo"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "romanandreg@gmail.com";
      author = "Roman Gonzalez";
      homepage = "http://github.com/HaskVan/tiempo";
      url = "";
      synopsis = "Specify time intervals in different units (secs, mins, hours, etc.)";
      description = "A sane and simple API that sits on top of the time library; it allows the creation\nof time intervals and provides to manipulate time using them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }