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
      specVersion = "1.0";
      identifier = { name = "IFS"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007, alpha";
      maintainer = "misc@NOSPAMalpheccar.org";
      author = "alpheccar";
      homepage = "http://www.alpheccar.org";
      url = "";
      synopsis = "Iterated Function System generation for Haskell";
      description = "Library to describe IFS and generate PPM pictures from the descriptions ";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "IFS" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }