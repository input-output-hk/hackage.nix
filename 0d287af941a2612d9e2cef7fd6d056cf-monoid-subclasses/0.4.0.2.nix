{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monoid-subclasses";
          version = "0.4.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013-2015 Mario Blazevic";
        maintainer = "Mario Blazevic <blamario@yahoo.com>";
        author = "Mario Blazevic";
        homepage = "https://github.com/blamario/monoid-subclasses/";
        url = "";
        synopsis = "Subclasses of Monoid";
        description = "A hierarchy of subclasses of 'Monoid' together with their instances for all data structures from base, containers, and\ntext packages.";
        buildType = "Simple";
      };
      components = {
        "monoid-subclasses" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.primes
            hsPkgs.vector
          ];
        };
        tests = {
          "Main" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.primes
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.monoid-subclasses
            ];
          };
        };
      };
    }