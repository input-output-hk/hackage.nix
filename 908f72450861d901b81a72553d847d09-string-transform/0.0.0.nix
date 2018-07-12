{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "string-transform";
          version = "0.0.0";
        };
        license = "MIT";
        copyright = "© ncaq";
        maintainer = "ncaq@ncaq.net";
        author = "ncaq";
        homepage = "https://github.com/ncaq/string-transform.git#readme";
        url = "";
        synopsis = "simple and easy haskell string transform";
        description = "";
        buildType = "Simple";
      };
      components = {
        "string-transform" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.utf8-string
          ];
        };
        tests = {
          "tasty" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.string-transform
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-smallcheck
            ];
          };
        };
      };
    }