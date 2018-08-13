{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "geniconvert";
        version = "0.17.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "eric.kow@loria.fr";
      author = "Carlos Areces and Eric Kow";
      homepage = "http://wiki.loria.fr/wiki/GenI";
      url = "";
      synopsis = "Conversion utility for the GenI generator";
      description = "Conversion utility for the GenI generator";
      buildType = "Simple";
    };
    components = {
      exes = {
        "geniconvert" = {
          depends  = [
            (hsPkgs.GenI)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.haskell98)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.HaXml)
          ];
        };
      };
    };
  }