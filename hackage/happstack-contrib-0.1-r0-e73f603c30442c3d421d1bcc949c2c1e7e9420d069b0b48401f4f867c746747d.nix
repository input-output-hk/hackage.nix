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
    flags = { base4 = true; tests = true; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "happstack-contrib"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack Team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Web related tools and services.";
      description = "Collection of standalone applications";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."happstack-util" or (buildDepError "happstack-util"))
          (hsPkgs."happstack-data" or (buildDepError "happstack-data"))
          (hsPkgs."happstack-state" or (buildDepError "happstack-state"))
          (hsPkgs."happstack-ixset" or (buildDepError "happstack-ixset"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.base4) [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."syb" or (buildDepError "syb"))
          ]) ++ (pkgs.lib).optional (flags.tests) (hsPkgs."HUnit" or (buildDepError "HUnit"));
        };
      exes = {
        "happstack-contrib-tests" = {
          depends = [ (hsPkgs."HUnit" or (buildDepError "HUnit")) ];
          };
        };
      };
    }