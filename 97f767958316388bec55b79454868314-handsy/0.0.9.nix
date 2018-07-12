{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "handsy";
          version = "0.0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "utdemir@gmail.com";
        author = "Utku Demir";
        homepage = "https://github.com/utdemir/handsy";
        url = "";
        synopsis = "A DSL to describe common shell operations and interpeters for running them locally and remotely.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "handsy" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.process
            hsPkgs.transformers
            hsPkgs.free
            hsPkgs.process-extras
            hsPkgs.shell-escape
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.transformers
              hsPkgs.free
              hsPkgs.process-extras
              hsPkgs.shell-escape
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }