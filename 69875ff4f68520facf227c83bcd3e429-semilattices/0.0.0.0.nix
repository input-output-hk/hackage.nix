{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "semilattices";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Rob Rix";
        maintainer = "rob.rix@me.com";
        author = "Rob Rix";
        homepage = "https://github.com/robrix/semilattices";
        url = "";
        synopsis = "Semilattices";
        description = "Join- and meet-semilattices, with optional upper and lower bounds, and a variety of instances for each.";
        buildType = "Simple";
      };
      components = {
        "semilattices" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }