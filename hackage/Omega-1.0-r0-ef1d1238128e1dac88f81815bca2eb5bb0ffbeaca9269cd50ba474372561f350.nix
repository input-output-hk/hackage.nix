{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { useinstalledomega = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "Omega"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cirodrig@illinois.edu";
      author = "Christopher Rodrigues";
      homepage = "";
      url = "";
      synopsis = "Operations on Presburger arithmetic formulae";
      description = "This package provides tools for manipulating sets and relations\nwhose members can be represented compactly as a Presburger\narithmetic formula.  Formulae are simplified and solved by the\nOmega Library.  The primary interface can be found in\n\"Data.Presburger.Omega.Set\" and \"Data.Presburger.Omega.Rel\".";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        libs = if flags.useinstalledomega
          then [
            (pkgs."omega" or ((hsPkgs.pkgs-errors).sysDepError "omega"))
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ]
          else [
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }