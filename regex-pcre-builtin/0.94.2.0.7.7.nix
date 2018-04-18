{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "regex-pcre-builtin";
          version = "0.94.2.0.7.7";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2006, Christopher Kuklewicz";
        maintainer = "TextRegexLazy@personal.mightyreason.com";
        author = "Christopher Kuklewicz";
        homepage = "http://sourceforge.net/projects/lazy-regex";
        url = "http://darcs.haskell.org/packages/regex-unstable/regex-pcre/";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "The PCRE backend to accompany regex-base, see www.pcre.org";
        buildType = "Simple";
      };
      components = {
        regex-pcre-builtin = {
          depends  = [
            hsPkgs.base
            hsPkgs.regex-base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.bytestring
          ];
        };
      };
    }