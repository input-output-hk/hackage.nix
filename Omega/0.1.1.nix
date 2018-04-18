{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "Omega";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cirodrig@illinois.edu";
        author = "Christopher Rodrigues";
        homepage = "";
        url = "";
        synopsis = "Operations on Presburger arithmetic formulae";
        description = "This package provides tools for manipulating sets and relations\nwhose members can be represented compactly as a Presburger\narithmetic formula.  The primary interface can be found\nin \"Data.Presburger.Omega.Set\" and \"Data.Presburger.Omega.Rel\".\nThe Omega library\n(<http://github.com/davewathaverford/the-omega-project>) must\nbe installed to build this package.";
        buildType = "Custom";
      };
      components = {
        Omega = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
          libs = [
            pkgs.omega
            pkgs."stdc++"
          ];
        };
      };
    }