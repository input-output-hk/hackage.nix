{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      useinstalledomega = false;
    };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "Omega";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cirodrig@illinois.edu";
      author = "Christopher Rodrigues";
      homepage = "";
      url = "";
      synopsis = "Operations on Presburger arithmetic formulae";
      description = "This package provides tools for manipulating sets and relations\nwhose members can be represented compactly as a Presburger\narithmetic formula.  The primary interface can be found\nin \"Data.Presburger.Omega.Set\" and \"Data.Presburger.Omega.Rel\".";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
        libs = if flags.useinstalledomega
          then [
            (pkgs."omega")
            (pkgs."stdc++")
          ]
          else [ (pkgs."stdc++") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }