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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "med-module"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Claude Heiland-Allen, Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "Parse song module files from Amiga MED and OctaMED";
      description = "MED (Music EDitor) and its successor OctaMED\nwere popular music trackers on the Amiga:\n<https://en.wikipedia.org/wiki/OctaMED>.\nThis is a library for parsing the binary module data.\n\nWith the Cabal flag @-fbuildExamples@ you can build two example programs:\n\n* @unmed2@:\nLoads song module files and show their content on standard output.\n\n* @animed@:\nCreate a PostScript document showing how a song is played.\nAlso creates an FFmpeg cue file for the @concat@ input type.\nThis way you can create videos with MED music\nplus precisely timed animations of the played tracks.\nSee the included @Makefile@ for the command calls\nfor creation of complete music videos from MMD files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."storable-endian" or (buildDepError "storable-endian"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      exes = {
        "unmed2" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."med-module" or (buildDepError "med-module"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "animed" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."med-module" or (buildDepError "med-module"))
            (hsPkgs."hps" or (buildDepError "hps"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }