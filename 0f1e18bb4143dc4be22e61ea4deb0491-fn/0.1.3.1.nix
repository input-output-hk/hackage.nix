{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fn";
          version = "0.1.3.1";
        };
        license = "ISC";
        copyright = "2015 Daniel Patterson";
        maintainer = "dbp@dbpmail.net";
        author = "Daniel Patterson <dbp@dbpmail.net>";
        homepage = "http://github.com/dbp/fn#readme";
        url = "";
        synopsis = "A functional web framework.";
        description = "Please see README.";
        buildType = "Simple";
      };
      components = {
        fn = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.blaze-builder
            hsPkgs.bytestring
          ];
        };
        tests = {
          fn-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.fn
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.http-types
              hsPkgs.wai
            ];
          };
        };
      };
    }