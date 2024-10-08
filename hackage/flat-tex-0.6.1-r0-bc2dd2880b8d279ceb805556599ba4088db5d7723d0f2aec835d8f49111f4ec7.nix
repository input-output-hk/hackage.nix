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
      identifier = { name = "flat-tex"; version = "0.6.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "http://www.imn.htwk-leipzig.de/~waldmann/";
      author = "Johannes Waldmann";
      homepage = "https://github.com/jwaldmann/flat-tex";
      url = "";
      synopsis = "flatten a latex multi-file latex document and remove all comments";
      description = "flatten a latex multi-file latex document and remove all comments";
      buildType = "Simple";
    };
    components = {
      exes = {
        "flat-tex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }