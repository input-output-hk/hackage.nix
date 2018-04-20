{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "regex-tdfa";
          version = "0.92";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007, Christopher Kuklewicz";
        maintainer = "TextRegexLazy@personal.mightyreason.com";
        author = "Christopher Kuklewicz";
        homepage = "http://sourceforge.net/projects/lazy-regex";
        url = "http://darcs.haskell.org/packages/regex-unstable/regex-tdfa/";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "A new all Haskell \"tagged\" DFA regex engine, inspired by libtre";
        buildType = "Custom";
      };
      components = {
        regex-tdfa = {
          depends  = [
            hsPkgs.regex-base
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.mtl
          ];
        };
      };
    }