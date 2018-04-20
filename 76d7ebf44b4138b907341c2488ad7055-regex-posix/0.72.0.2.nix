{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "regex-posix";
          version = "0.72.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2006, Christopher Kuklewicz";
        maintainer = "TextRegexLazy@personal.mightyreason.com";
        author = "Christopher Kuklewicz";
        homepage = "http://sourceforge.net/projects/lazy-regex";
        url = "";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "The posix regex backend for regex-base";
        buildType = "Configure";
      };
      components = {
        regex-posix = {
          depends  = [
            hsPkgs.regex-base
          ] ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
            ]
            else [ hsPkgs.base ]);
        };
      };
    }