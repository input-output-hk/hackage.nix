{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      development = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "recursion";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vanessa.mchale@iohk.io";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "A recursion schemes library for GHC.";
      description = "A performant recursion schemes library for Haskell with minimal dependencies";
      buildType = "Simple";
    };
    components = {
      "recursion" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.composition-prelude)
        ];
      };
    };
  }