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
      specVersion = "2.4";
      identifier = { name = "primitive-primvar"; version = "0.0.0.0"; };
      license = "CC0-1.0";
      copyright = "";
      maintainer = "qrpnxz@hyperlife.xyz";
      author = "Russell Hernandez Ruiz";
      homepage = "https://sr.ht/~qrpnxz/primitive-primvar/";
      url = "";
      synopsis = "Unboxed variables for `Prim` values.";
      description = "This package provides the type `PrimVar`, which is internally a\n`PrimArray` of one element, but with a convenient `MutVar`-like API.";
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