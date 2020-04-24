{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "gitit"; version = "0.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "";
      url = "";
      synopsis = "Wiki using HAppS, git, and pandoc.";
      description = "Gitit is a wiki program. HAppS is used for the web\nserver and session state. Pages and uploaded files\nare stored in a git repository and may be modified\neither by using git's command-line tools or through\nthe wiki's web interface. Pandoc's extended version\nof markdown is used as a markup language. Gitit can\nbe configured to display TeX math (using jsMath)\nand highlighted source code. Ajax is used in a\nfew places, but all the basic functionality is\navailable even in browsers that do not support\njavascript.";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "gitit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."highlighting-kate" or ((hsPkgs.pkgs-errors).buildDepError "highlighting-kate"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."HAppS-Server" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-Server"))
            (hsPkgs."HAppS-State" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-State"))
            (hsPkgs."HAppS-Data" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-Data"))
            (hsPkgs."Crypto" or ((hsPkgs.pkgs-errors).buildDepError "Crypto"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            ];
          buildable = true;
          };
        };
      };
    }