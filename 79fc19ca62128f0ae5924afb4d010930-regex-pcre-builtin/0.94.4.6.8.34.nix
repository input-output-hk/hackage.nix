{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      newbase = true;
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "regex-pcre-builtin";
          version = "0.94.4.6.8.34";
        };
        license = "BSD-3-Clause";
        copyright = "See LICENSE file";
        maintainer = "audreyt@audreyt.org";
        author = "Audrey Tang";
        homepage = "http://hackage.haskell.org/package/regex-pcre";
        url = "http://code.haskell.org/regex-pcre/";
        synopsis = "Replaces/Enhances Text.Regex";
        description = "The PCRE backend to accompany regex-base, with bundled code from www.pcre.org";
        buildType = "Simple";
      };
      components = {
        regex-pcre-builtin = {
          depends  = if _flags.newbase
            then [
              hsPkgs.base
              hsPkgs.regex-base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.bytestring
            ]
            else if _flags.splitbase
              then [
                hsPkgs.base
                hsPkgs.regex-base
                hsPkgs.array
                hsPkgs.containers
                hsPkgs.bytestring
              ]
              else [
                hsPkgs.base
                hsPkgs.regex-base
              ];
        };
      };
    }