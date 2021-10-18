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
      identifier = { name = "fmr"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Andrey Mulik";
      maintainer = "<work.a.mulik@gmail.com>";
      author = "Andrey Mulik";
      homepage = "";
      url = "";
      synopsis = "Fake monadic records library";
      description = "The generalized syntax of abstract monadic records.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }