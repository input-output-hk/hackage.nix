{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "audacity"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/audacity";
      url = "";
      synopsis = "Interchange with the Audacity sound signal editor";
      description = "This package provides functions\nfor interchange with the Audacity sound signal editor.\nCurrently we support import and export of label tracks,\nexport of Audacity projects and\nlimited import of tracks from Audacity projects.\n\nWe provide some examples that are useful on its own:\n\n* @sox-concat@:\nConcatenate a sequence of sound files with matching\nsampling rates and numbers of channels using SoX\nand generate an Audacity label track file\nthat shows the origins of the parts.\n\n* @audacity-concat@:\nCreate an Audacity project file\ncontaining a virtual concatenation of the input sound files\nand a label track showing the origins of the sound files.\n\n* @audacity-combine@:\nPut several audio and label files into tracks of a new Audacity project.\nOpening one or even multiple such projects is much easier\nthan loading individual tracks into Audacity.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
          (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."tagchup" or ((hsPkgs.pkgs-errors).buildDepError "tagchup"))
          (hsPkgs."xml-basic" or ((hsPkgs.pkgs-errors).buildDepError "xml-basic"))
          (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "sox-concat" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."audacity" or ((hsPkgs.pkgs-errors).buildDepError "audacity"))
            (hsPkgs."soxlib" or ((hsPkgs.pkgs-errors).buildDepError "soxlib"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "audacity-concat" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."audacity" or ((hsPkgs.pkgs-errors).buildDepError "audacity"))
            (hsPkgs."soxlib" or ((hsPkgs.pkgs-errors).buildDepError "soxlib"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "audacity-combine" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."audacity" or ((hsPkgs.pkgs-errors).buildDepError "audacity"))
            (hsPkgs."soxlib" or ((hsPkgs.pkgs-errors).buildDepError "soxlib"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }