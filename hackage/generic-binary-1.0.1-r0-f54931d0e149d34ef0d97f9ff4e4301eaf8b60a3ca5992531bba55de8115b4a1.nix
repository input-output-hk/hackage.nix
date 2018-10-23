{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "generic-binary";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@fvisser.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Generic Data.Binary derivation using GHC generics.";
      description = "Generic Data.Binary derivation using GHC generics.";
      buildType = "Simple";
    };
    components = {
      "generic-binary" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
        ];
      };
    };
  }