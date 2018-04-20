{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "regex-posix";
          version = "0.91";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007, Christopher Kuklewicz";
        maintainer = "TextRegexLazy@personal.mightyreason.com";
        author = "Christopher Kuklewicz";
        homepage = "http://sourceforge.net/projects/lazy-regex";
        url = "http://darcs.haskell.org/packages/regex-unstable/regex-posix/";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "The posix regex backend for regex-base";
        buildType = "Custom";
      };
      components = {
        regex-posix = {
          depends  = [
            hsPkgs.regex-base
            hsPkgs.base
          ];
        };
      };
    }