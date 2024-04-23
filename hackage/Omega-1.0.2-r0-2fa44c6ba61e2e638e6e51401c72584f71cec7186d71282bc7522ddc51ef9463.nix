{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { useinstalledomega = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Omega"; version = "1.0.2"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        libs = if flags.useinstalledomega
          then [
            (pkgs."omega" or (errorHandler.sysDepError "omega"))
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          ]
          else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "test-Omega" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          libs = if flags.useinstalledomega
            then [
              (pkgs."omega" or (errorHandler.sysDepError "omega"))
              (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
            ]
            else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
          buildable = true;
        };
      };
    };
  }