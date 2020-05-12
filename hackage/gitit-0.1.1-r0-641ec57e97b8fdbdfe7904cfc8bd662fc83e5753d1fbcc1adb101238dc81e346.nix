{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."HAppS-Server" or (errorHandler.buildDepError "HAppS-Server"))
            (hsPkgs."HAppS-State" or (errorHandler.buildDepError "HAppS-State"))
            (hsPkgs."HAppS-Data" or (errorHandler.buildDepError "HAppS-Data"))
            (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ];
          buildable = true;
          };
        };
      };
    }