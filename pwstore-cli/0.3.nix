{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      fast = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pwstore-cli";
          version = "0.3";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "robert@rycee.net";
        author = "Robert Helgesson";
        homepage = "http://darcsden.com/rycee/pwstore-cli/";
        url = "";
        synopsis = "Command line interface for the pwstore library";
        description = "This program provides a command line interface for Peter Scott's\npwstore library.  Specifically, it is possible to generate,\nvalidate, and strengthen passwords hashed in the pwstore format.";
        buildType = "Simple";
      };
      components = {
        exes = {
          pwstore = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.cmdargs
            ] ++ (if _flags.fast
              then [ hsPkgs.pwstore-fast ]
              else [
                hsPkgs.pwstore-purehaskell
              ]);
          };
        };
        tests = {
          test-pwstore-cli = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.pwstore-fast
            ];
          };
        };
      };
    }