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
      specVersion = "1.6";
      identifier = { name = "PrimitiveArray"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2010-2012";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Efficient multidimensional arrays";
      description = "This library provides efficient multidimensional arrays. All\narrays are 0-based and indexed using repa-shapes.\n\nPlease note that this version only has the name (and author) in\ncommon with the previous 0.0.4.0 version. The basic idea of the\nlibrary remains the same: provide efficient access to immutable\narrays.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          ];
        buildable = true;
        };
      };
    }