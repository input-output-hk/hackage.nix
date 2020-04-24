{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "geni-util"; version = "0.24.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "eric.kow@gmail.com";
      author = "Eric Kow";
      homepage = "http://kowey.github.io/GenI";
      url = "";
      synopsis = "Companion tools for use with the GenI surface realiser";
      description = "Tools included:\n\n* client - sends all test cases from a GenI suite to geniserver, and saves\nresults in the same format as batch mode GenI\n\n* report - generates an HTML summary of a GenI batch operation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."GenI" or ((hsPkgs.pkgs-errors).buildDepError "GenI"))
          (hsPkgs."geniserver" or ((hsPkgs.pkgs-errors).buildDepError "geniserver"))
          (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
          (hsPkgs."http-streams" or ((hsPkgs.pkgs-errors).buildDepError "http-streams"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          ];
        buildable = true;
        };
      exes = {
        "geni-util" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."geni-util" or ((hsPkgs.pkgs-errors).buildDepError "geni-util"))
            (hsPkgs."GenI" or ((hsPkgs.pkgs-errors).buildDepError "GenI"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }