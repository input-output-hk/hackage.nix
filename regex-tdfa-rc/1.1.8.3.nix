{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "regex-tdfa-rc";
          version = "1.1.8.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007, Christopher Kuklewicz";
        maintainer = "Roman Cheplyaka";
        author = "Christopher Kuklewicz";
        homepage = "http://hackage.haskell.org/package/regex-tdfa";
        url = "http://code.haskell.org/regex-tdfa/";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "A new all Haskell \"tagged\" DFA regex engine, inspired by libtre (fork by Roman Cheplyaka)";
        buildType = "Simple";
      };
      components = {
        regex-tdfa-rc = {
          depends  = [
            hsPkgs.regex-base
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.array
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