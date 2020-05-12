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
      identifier = { name = "lang"; version = "0.2.2"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "zaomir@outlook.com";
      author = "Zaoqi";
      homepage = "语.ml";
      url = "";
      synopsis = "A Lisp";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Mapping" or (errorHandler.buildDepError "Mapping"))
          (hsPkgs."http-streams" or (errorHandler.buildDepError "http-streams"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }