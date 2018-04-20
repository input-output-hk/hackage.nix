{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "flowlocks-framework";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Niklas Broberg <niklas.broberg@chalmers.se>";
        author = "Niklas Broberg";
        homepage = "";
        url = "";
        synopsis = "Generalized Flow Locks Framework";
        description = "This library provides a generalized framework\nfor information flow policies built around the\nconcept of Flow locks.";
        buildType = "Simple";
      };
      components = {
        flowlocks-framework = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.containers
          ];
        };
        tests = {
          test-flowlocks = {
            depends  = [
              hsPkgs.base
              hsPkgs.flowlocks-framework
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }