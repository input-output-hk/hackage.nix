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
      specVersion = "1.12";
      identifier = { name = "cut-the-crap"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2019 Jappie Klooster";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "";
      url = "";
      synopsis = "Cuts out uninteresting parts of videos by detecting silences.";
      description = "Cut the crap is an automatic video editing program for streamers. It can cut out uninteresting parts by detecting silences. This was inspired by [jumpcutter](https://github.com/carykh/jumpcutter), where this program can get better quality results by using an (optional) dedicated microphone track. This prevents cutting of [quieter consonants](https://youtu.be/DQ8orIurGxw?t=675) for example. Using ffmpeg more efficiently also produces faster results and is less error prone.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."shelly" or (buildDepError "shelly"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      exes = {
        "cut-the-crap" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cut-the-crap" or (buildDepError "cut-the-crap"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
            ];
          buildable = true;
          };
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
            ];
          buildable = true;
          };
        };
      };
    }