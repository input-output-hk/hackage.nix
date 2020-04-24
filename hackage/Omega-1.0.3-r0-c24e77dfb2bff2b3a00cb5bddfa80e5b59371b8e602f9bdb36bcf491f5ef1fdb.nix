{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { useinstalledomega = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "Omega"; version = "1.0.3"; };
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
      tests = {
        "test-Omega" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
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
      };
    }