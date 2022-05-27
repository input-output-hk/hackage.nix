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
      identifier = { name = "poly-rec"; version = "0.7.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2020-2022, Juan García-Garland, Marcos Viera, Alberto Pardo";
      maintainer = "jpgarcia@fing.edu.uy";
      author = "Juan García-Garland";
      homepage = "";
      url = "";
      synopsis = "Polykinded extensible records";
      description = "Extensible records/row polymorphism for Haskell. Fields are polykinded,\nto statically check rich structures. This library was initially conceived\nas part of the AspectAG project.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."requirements" or (errorHandler.buildDepError "requirements"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }