{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      newbase = true;
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "regex-posix";
          version = "0.95.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007-2010, Christopher Kuklewicz";
        maintainer = "TextRegexLazy@personal.mightyreason.com";
        author = "Christopher Kuklewicz";
        homepage = "http://sourceforge.net/projects/lazy-regex";
        url = "http://code.haskell.org/regex-posix/";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "The posix regex backend for regex-base";
        buildType = "Simple";
      };
      components = {
        regex-posix = {
          depends  = if _flags.newbase
            then [
              hsPkgs.regex-base
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.bytestring
            ]
            else if _flags.splitbase
              then [
                hsPkgs.regex-base
                hsPkgs.base
                hsPkgs.array
                hsPkgs.containers
                hsPkgs.bytestring
              ]
              else [
                hsPkgs.regex-base
                hsPkgs.base
              ];
        };
      };
    }