{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "regex-tdfa";
          version = "0.95.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007, Christopher Kuklewicz";
        maintainer = "TextRegexLazy@personal.mightyreason.com";
        author = "Christopher Kuklewicz";
        homepage = "http://sourceforge.net/projects/lazy-regex";
        url = "http://darcs.haskell.org/packages/regex-unstable/regex-tdfa/";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "A new all Haskell \"tagged\" DFA regex engine, inspired by libtre";
        buildType = "Simple";
      };
      components = {
        regex-tdfa = {
          depends  = if _flags.base4
            then [
              hsPkgs.regex-base
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.ghc-prim
            ]
            else [
              hsPkgs.regex-base
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.bytestring
            ];
        };
      };
    }