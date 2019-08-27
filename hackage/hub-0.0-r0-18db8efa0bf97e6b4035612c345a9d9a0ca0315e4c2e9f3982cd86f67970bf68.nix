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
      specVersion = "1.6";
      identifier = { name = "hub"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan, 2011";
      maintainer = "Chris Dornan <chris@chrisdornan.com>";
      author = "Chris Dornan <chris@chrisdornan.com>";
      homepage = "https://github.com/cdornan/hub";
      url = "";
      synopsis = "A utility for multiplexing multiple GHC installations";
      description = "This package provides a utility for multiplexing multiple\nGHC and Haskell Platform installations, the installation\nbeing selected by configuraton file or environment\nvariable.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hub" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hexpat" or (buildDepError "hexpat"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            ];
          };
        };
      };
    }