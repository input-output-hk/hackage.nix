{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "regex-base";
          version = "0.93.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2006, Christopher Kuklewicz";
        maintainer = "TextRegexLazy@personal.mightyreason.com";
        author = "Christopher Kuklewicz";
        homepage = "http://sourceforge.net/projects/lazy-regex";
        url = "http://darcs.haskell.org/packages/regex-unstable/regex-base/";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "Interface API for regex-posix,pcre,parsec,tdfa,dfa";
        buildType = "Custom";
      };
      components = {
        regex-base = {
          depends  = if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.array
            ]
            else [ hsPkgs.base hsPkgs.mtl ];
        };
      };
    }