let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hs-mesos"; version = "0.20.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Bindings to the Apache Mesos platform.\n\n<http://mesos.apache.org/ Apache Mesos> is a cluster manager that simplifies the complexity of running applications on a shared pool of servers.\n\nNote that this package currently requires 'libmesos' to be installed on your development system in order to build.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."managed" or (buildDepError "managed"))
          ];
        libs = [
          (pkgs."mesos" or (sysDepError "mesos"))
          (pkgs."stdc++" or (sysDepError "stdc++"))
          ];
        buildable = true;
        };
      exes = {
        "test-executor" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hs-mesos" or (buildDepError "hs-mesos"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          libs = [
            (pkgs."mesos" or (sysDepError "mesos"))
            (pkgs."stdc++" or (sysDepError "stdc++"))
            ];
          buildable = true;
          };
        "test-framework" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hs-mesos" or (buildDepError "hs-mesos"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."lens" or (buildDepError "lens"))
            ];
          libs = [
            (pkgs."mesos" or (sysDepError "mesos"))
            (pkgs."stdc++" or (sysDepError "stdc++"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hs-mesos" or (buildDepError "hs-mesos"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."managed" or (buildDepError "managed"))
            ];
          buildable = true;
          };
        };
      };
    }