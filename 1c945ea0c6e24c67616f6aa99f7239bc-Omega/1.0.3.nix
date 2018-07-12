{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      useinstalledomega = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "Omega";
          version = "1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cirodrig@illinois.edu";
        author = "Christopher Rodrigues";
        homepage = "";
        url = "";
        synopsis = "Integer sets and relations using Presburger arithmetic";
        description = "Sets of integer tuples and relations on integer tuples.\nSets and relations are represented compactly by storing their\ncharacteristic function as a Presburger arithmetic formula.\nFormulae are simplified and solved by the Omega Library.\nThe primary interface can be found in\n\"Data.Presburger.Omega.Set\" and \"Data.Presburger.Omega.Rel\".";
        buildType = "Custom";
      };
      components = {
        "Omega" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
          libs = if _flags.useinstalledomega
            then [
              pkgs.omega
              pkgs."stdc++"
            ]
            else [ pkgs."stdc++" ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
        tests = {
          "test-Omega" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
            ];
            libs = if _flags.useinstalledomega
              then [
                pkgs.omega
                pkgs."stdc++"
              ]
              else [ pkgs."stdc++" ];
            build-tools = [
              hsPkgs.buildPackages.hsc2hs
            ];
          };
        };
      };
    }