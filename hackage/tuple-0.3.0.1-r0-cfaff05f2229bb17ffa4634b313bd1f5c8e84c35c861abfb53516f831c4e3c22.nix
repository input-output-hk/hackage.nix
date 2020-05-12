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
      identifier = { name = "tuple"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Lennart Augustsson";
      maintainer = "Lennart Augustsson";
      author = "Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "Various functions on tuples";
      description = "Various useful functions on tuples, overloaded on tuple size.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
          ];
        buildable = true;
        };
      };
    }