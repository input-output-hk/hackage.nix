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
          name = "xhaskell-library";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009, Kenny Zhuo Ming Lu and Martin Sulzmann";
        maintainer = "luzhuomi@gmail.com, martin.sulzmann@gmail.com";
        author = "Kenny Zhuo Ming Lu and Martin Sulzmann";
        homepage = "http://code.google.com/p/xhaskell-library/";
        url = "http://darcs.haskell.org/packages/regex-unstable/xhaskell-library";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "Regex algorithm implementation using partial derivatives";
        buildType = "Simple";
      };
      components = {
        xhaskell-library = {
          depends  = [
            hsPkgs.regex-base
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.bytestring
          ] ++ (if _flags.base4
            then [
              hsPkgs.base
              hsPkgs.ghc-prim
            ]
            else [ hsPkgs.base ]);
        };
      };
    }