{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "binary-orphans";
          version = "0.1.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/binary-orphans#readme";
        url = "";
        synopsis = "Orphan instances for binary";
        description = "`binary-orphans` defines orphan instances for types in some popular packages.";
        buildType = "Simple";
      };
      components = {
        binary-orphans = {
          depends  = ([
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.binary
            hsPkgs.case-insensitive
            hsPkgs.hashable
            hsPkgs.scientific
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.text-binary
            hsPkgs.vector-binary-instances
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups) ++ pkgs.lib.optionals (!compiler.isGhc) [
            hsPkgs.void
            hsPkgs.nats
          ];
        };
        tests = {
          binary-orphans-test = {
            depends  = ([
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.case-insensitive
              hsPkgs.hashable
              hsPkgs.scientific
              hsPkgs.tagged
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.binary-orphans
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups) ++ pkgs.lib.optionals (!compiler.isGhc) [
              hsPkgs.void
              hsPkgs.nats
            ];
          };
        };
      };
    }