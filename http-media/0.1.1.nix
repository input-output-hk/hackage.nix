{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-media";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "(c) 2013 Timothy Jones";
        maintainer = "Timothy Jones <git@zimothy.com>";
        author = "Timothy Jones";
        homepage = "http://github.com/zimothy/http-media";
        url = "";
        synopsis = "Processing HTTP Content-Type and Accept headers";
        description = "This library is intended to be a comprehensive solution to parsing media\ntypes, including quality parameters, in HTTP headers. It addresses parsing of\nthe Content-Type and Accept headers, and includes general data types for\nmatching against the other accept headers as well. It encodes MIME parameters\ninto a 'MediaType' data, and allows the matching of the final value by\ncomparing quality values from the client.";
        buildType = "Simple";
      };
      components = {
        http-media = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.utf8-string
          ];
        };
        tests = {
          test-http-media = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.Cabal
              hsPkgs.cabal-test-quickcheck
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }