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
      identifier = { name = "audacity"; version = "0.0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/audacity";
      url = "";
      synopsis = "Interchange with the Audacity sound signal editor";
      description = "This package provides functions\nfor interchange with the Audacity sound signal editor.\nCurrently we support import and export of label tracks,\nexport of Audacity projects and\nlimited import of tracks from Audacity projects.\n\nWe provide some examples that are useful on its own:\n\n* @sox-split@:\nSplit an audio file according to a label track.\nAudacity provides this function by itself.\nYou can use placeholders like @%s@ and @%02d@\nin order to compose the names of the parts from the labels and positions.\n\n* @sox-concat@:\nConcatenate a sequence of sound files with matching\nsampling rates and numbers of channels using SoX\nand generate an Audacity label track file\nthat shows the origins of the parts.\n\n* @audacity-concat@:\nCreate an Audacity project file\ncontaining a virtual concatenation of the input sound files\nand a label track showing the origins of the sound files.\n\n* @audacity-combine@:\nPut several audio and label files into tracks of a new Audacity project.\nOpening one or even multiple such projects is much easier\nthan loading individual tracks into Audacity.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."storablevector" or (buildDepError "storablevector"))
          (hsPkgs."storable-record" or (buildDepError "storable-record"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."tagchup" or (buildDepError "tagchup"))
          (hsPkgs."xml-basic" or (buildDepError "xml-basic"))
          (hsPkgs."non-empty" or (buildDepError "non-empty"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "sox-split" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."audacity" or (buildDepError "audacity"))
            (hsPkgs."soxlib" or (buildDepError "soxlib"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "sox-concat" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."audacity" or (buildDepError "audacity"))
            (hsPkgs."soxlib" or (buildDepError "soxlib"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "audacity-concat" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."audacity" or (buildDepError "audacity"))
            (hsPkgs."soxlib" or (buildDepError "soxlib"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "audacity-combine" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."audacity" or (buildDepError "audacity"))
            (hsPkgs."soxlib" or (buildDepError "soxlib"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }