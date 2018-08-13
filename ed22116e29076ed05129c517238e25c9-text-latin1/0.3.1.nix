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
      specVersion = "1.6.0";
      identifier = {
        name = "text-latin1";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/text-latin1";
      url = "";
      synopsis = "Latin-1 (including ASCII) utility functions";
      description = "This package provides various functions over the ASCII ang Latin-1\nportions of the 'Char' and 'Word8' data types.";
      buildType = "Simple";
    };
    components = {
      "text-latin1" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-checked)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.semigroups)
          (hsPkgs.case-insensitive)
          (hsPkgs.hashable)
        ];
      };
    };
  }