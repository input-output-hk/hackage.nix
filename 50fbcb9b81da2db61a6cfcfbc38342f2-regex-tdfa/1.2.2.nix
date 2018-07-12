{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      devel = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "regex-tdfa";
          version = "1.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007, Christopher Kuklewicz";
        maintainer = "Artyom <yom@artyom.me>, Christopher Kuklewicz <TextRegexLazy@personal.mightyreason.com>";
        author = "Christopher Kuklewicz";
        homepage = "https://github.com/ChrisKuklewicz/regex-tdfa";
        url = "";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "A new all Haskell \"tagged\" DFA regex engine, inspired by libtre";
        buildType = "Simple";
      };
      components = {
        "regex-tdfa" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.ghc-prim
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.regex-base
          ];
        };
      };
    }