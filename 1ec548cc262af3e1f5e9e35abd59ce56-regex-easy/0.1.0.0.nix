{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "regex-easy";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014-2017 zerobuzz.net";
        maintainer = "mf@zerobuzz.net";
        author = "Matthias Fischmann";
        homepage = "https://github.com/zerobuzz/regex-easy";
        url = "";
        synopsis = "sugar for regex-pcre";
        description = "This packages is intended to make perl developers happy to use Haskell.  (:";
        buildType = "Simple";
      };
      components = {
        "regex-easy" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.string-conversions
            hsPkgs.bytestring
            hsPkgs.regex-pcre
          ];
        };
      };
    }