{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "http-kit";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "(c) 2014 Zalora South East Asia Pte. Ltd";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "A low-level HTTP library";
        description = "A low-level HTTP library that can be used to build more\nsophisticated HTTP applications on top of it.\n\nThe design goals are:\n\n[secure] To mitigate denial-of-service attacks, everything is\nbounded.\n\n[efficient] Message bodies are read in chunks, so that they\ncan be processed with constant space usage.\n\n[universal] No framework for streaming data is used.  This\nallows you to build more sophisticated application on top of\nit, using the libraries that fit your purpose.";
        buildType = "Simple";
      };
      components = {
        http-kit = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.case-insensitive
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.http-kit
              hsPkgs.http-types
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }