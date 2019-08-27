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
      identifier = { name = "wavy"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2014 Robert Massaioli <robertmassaioli@gmail.com>";
      maintainer = "Robert Massaioli <robertmassaioli@gmail.com>";
      author = "Robert Massaioli <robertmassaioli@gmail.com>";
      homepage = "http://bitbucket.org/robertmassaioli/wavy";
      url = "";
      synopsis = "Process WAVE files in Haskell.";
      description = "Wavy was designed to be a fast and efficient method of extracting and writing PCM\ndata to and from WAV files. It is here to help you make fast use of Audio\ndata in your Haskell programs and thus encourage many more audio projects in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."riff" or (buildDepError "riff"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "wave-identity" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."wavy" or (buildDepError "wavy"))
            ];
          };
        "wave-info" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."wavy" or (buildDepError "wavy"))
            ];
          };
        "wave-split" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wavy" or (buildDepError "wavy"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "wave-generate-sine" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wavy" or (buildDepError "wavy"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      };
    }