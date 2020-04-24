{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { static = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "darcswatch"; version = "0.4.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Joachim Breitner";
      homepage = "http://darcswatch.nomeata.de/";
      url = "";
      synopsis = "Track application of Darcs patches";
      description = "DarcsWatch is a tool to track the state of darcs patches\nthat have been submitted to some project, usually by\nusing the \"darcs send\" command. It allows both submitters\nand project maintainers to get an overview of patches that\nhave been submitted but not yet applied. Some notable features are:\n\n* Reads both darcs1 and darcs2.0 (hashed) format repositories.\n\n* Displays patch summaries per user and per repository.\n\n* Patch diff can be reviewed directly.\n\n* Download link for each patch, to apply without searching for the email.\n\n* Knows about inverse and amend-recorded patches and uses them to consider\n\n* Integrates into http://bugs.darcs.net/\n\n* Optionally sends out mails to mailing lists when a patch is applied to a repository\npatches obsolete.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "darcswatch-generate" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."Crypto" or ((hsPkgs.pkgs-errors).buildDepError "Crypto"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."nano-md5" or ((hsPkgs.pkgs-errors).buildDepError "nano-md5"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."concurrentoutput" or ((hsPkgs.pkgs-errors).buildDepError "concurrentoutput"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."mime-string" or ((hsPkgs.pkgs-errors).buildDepError "mime-string"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        "darcswatch-import-mail" = { buildable = true; };
        "darcswatch-import-bundle" = { buildable = true; };
        "darcswatch-convert-data" = { buildable = true; };
        "darcswatch-pull-repos" = { buildable = true; };
        "darcswatch-update-data" = { buildable = true; };
        "darcswatch-cgi" = { buildable = true; };
        };
      };
    }