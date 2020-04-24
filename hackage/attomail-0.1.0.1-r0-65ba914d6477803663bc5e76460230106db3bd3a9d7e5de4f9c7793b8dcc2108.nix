{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "attomail"; version = "0.1.0.1"; };
      license = "BSD-2-Clause";
      copyright = "phlummox 2017";
      maintainer = "phlummox2@gmail.com";
      author = "phlummox";
      homepage = "";
      url = "";
      synopsis = "Minimal mail delivery agent (MDA) for local mail with maildir support";
      description = "Acts as a minimal (local delivery only, many features un-implemented) mail\ndelivery agent (or MDA), delivering mail to a local @maildir@ format spool.\nHandy when you don't want to install an MTA (Mail Transfer Agent) or\nfuller-featured MDA - you just want a program which accepts\n@sendmail@-style delivery of messages from local programs, and dumps them\nsomewhere you can read them.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "attomail" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."unix-time" or ((hsPkgs.pkgs-errors).buildDepError "unix-time"))
            (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
            (hsPkgs."email-validate" or ((hsPkgs.pkgs-errors).buildDepError "email-validate"))
            (hsPkgs."hsemail-ns" or ((hsPkgs.pkgs-errors).buildDepError "hsemail-ns"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "attomail-doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }