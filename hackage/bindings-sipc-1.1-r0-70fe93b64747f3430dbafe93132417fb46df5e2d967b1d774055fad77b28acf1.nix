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
      specVersion = "1.8";
      identifier = { name = "bindings-sipc"; version = "1.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Justin Ethier <github.com/justinethier>";
      author = "Justin Ethier";
      homepage = "https://github.com/justinethier/hs-bindings-sipc";
      url = "";
      synopsis = "Low level bindings to SIPC.";
      description = "Low level bindings for the SELinux Secure Inter-Process\nCommunications (SIPC) Library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        libs = [ (pkgs."sipc" or (sysDepError "sipc")) ];
        };
      exes = {
        "MQCreator" = {
          depends = [
            (hsPkgs."bindings-sipc" or (buildDepError "bindings-sipc"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "MQDestroyer" = {
          depends = [
            (hsPkgs."bindings-sipc" or (buildDepError "bindings-sipc"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "MQReader" = {
          depends = [
            (hsPkgs."bindings-sipc" or (buildDepError "bindings-sipc"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "MQSender" = {
          depends = [
            (hsPkgs."bindings-sipc" or (buildDepError "bindings-sipc"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }