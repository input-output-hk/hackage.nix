{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      use-text-show = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-api-data";
          version = "0.3.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Nickolay Kudasov <nickolay.kudasov@gmail.com>";
        author = "Nickolay Kudasov <nickolay.kudasov@gmail.com>";
        homepage = "http://github.com/fizruk/http-api-data";
        url = "";
        synopsis = "Converting to/from HTTP API data like URL pieces, headers and query parameters.";
        description = "Please see README.md";
        buildType = "Custom";
      };
      components = {
        http-api-data = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.text
            hsPkgs.time
            hsPkgs.time-locale-compat
            hsPkgs.unordered-containers
            hsPkgs.uri-bytestring
            hsPkgs.uuid-types
          ] ++ pkgs.lib.optional _flags.use-text-show hsPkgs.text-show;
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.unordered-containers
              hsPkgs.http-api-data
              hsPkgs.text
              hsPkgs.time
              hsPkgs.bytestring
              hsPkgs.uuid
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }