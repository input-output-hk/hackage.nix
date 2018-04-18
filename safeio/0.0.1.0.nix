{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "safeio";
          version = "0.0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Luis Pedro Coelho";
        author = "Luis Pedro Coelho";
        homepage = "";
        url = "";
        synopsis = "Write output to disk atomically";
        description = "This package implements utilities to perform atomic output\nso as to avoid the problem of partial intermediate files.";
        buildType = "Simple";
      };
      components = {
        safeio = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.unix
          ];
        };
        tests = {
          safeiotest = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.unix
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-th
            ];
          };
        };
      };
    }