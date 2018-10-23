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
        name = "AC-Colour";
        version = "1.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "MathematicalOrchid@hotmail.com";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "Efficient RGB colour types.";
      description = "This Haskell library is a basic RGB colour types, with\nboth @Double@ and @Word8@ channel types. It implements\nefficient conversions between the two (GHC-specific),\nand general arithmetic over colours.\nChanges:\n* Now works with GHC 6.12.x.";
      buildType = "Simple";
    };
    components = {
      "AC-Colour" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }