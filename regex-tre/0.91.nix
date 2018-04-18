{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "regex-tre";
          version = "0.91";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2006, Christopher Kuklewicz";
        maintainer = "TextRegexLazy@personal.mightyreason.com";
        author = "Christopher Kuklewicz";
        homepage = "http://sourceforge.net/projects/lazy-regex";
        url = "http://darcs.haskell.org/packages/regex-unstable/regex-tre/";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "The TRE backend to accompany regex-base";
        buildType = "Custom";
      };
      components = {
        regex-tre = {
          depends  = [
            hsPkgs.base
            hsPkgs.regex-base
          ];
          libs = [ pkgs.tre ];
        };
      };
    }