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
      specVersion = "1.2";
      identifier = { name = "PrimitiveArray"; version = "0.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "";
      url = "";
      synopsis = "Unboxed, multidimensional arrays based on the primitive\npackage.";
      description = "Provides unboxed multidimensional tables with a small\ninterface. Comes with an instance for Ix keys.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
    };
  }