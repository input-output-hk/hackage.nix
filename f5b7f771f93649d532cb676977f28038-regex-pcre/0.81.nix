{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "regex-pcre";
          version = "0.81";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2006, Christopher Kuklewicz";
        maintainer = "TextRegexLazy@personal.mightyreason.com";
        author = "Christopher Kuklewicz";
        homepage = "http://sourceforge.net/projects/lazy-regex";
        url = "";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "The PCRE backend to accompany regex-base";
        buildType = "Custom";
      };
      components = {
        regex-pcre = {
          depends  = [
            hsPkgs.regex-base
            hsPkgs.base
            hsPkgs.fps
          ];
          libs = [ pkgs.pcre ];
        };
      };
    }