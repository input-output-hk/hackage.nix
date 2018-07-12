{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "regex-deriv";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010-2013, Kenny Zhuo Ming Lu and Martin Sulzmann";
        maintainer = "luzhuomi@gmail.com, martin.sulzmann@gmail.com";
        author = "Kenny Zhuo Ming Lu and Martin Sulzmann";
        homepage = "http://code.google.com/p/xhaskell-regex-deriv/";
        url = "";
        synopsis = "Replaces/Enhances Text.Regex. Implementing regular expression matching using Bzozoski's Deriviative";
        description = "Regex algorithm implementation using derivatives.";
        buildType = "Simple";
      };
      components = {
        "regex-deriv" = {
          depends  = [
            hsPkgs.regex-base
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.bitset
            hsPkgs.parallel
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }