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
      identifier = { name = "RichConditional"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "aovieth@gmail.com";
      author = "Alexander Vieth";
      homepage = "https://github.com/avieth/RichConditional";
      url = "";
      synopsis = "Tiny library to replace classic if/else";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }