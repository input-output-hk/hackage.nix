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
      specVersion = "1.2";
      identifier = { name = "gitit"; version = "0.3.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/gitit/tree/master";
      url = "";
      synopsis = "Wiki using HAppS, git, and pandoc.";
      description = "Gitit is a wiki program. Pages and uploaded files\nare stored in a git repository and may be modified\neither by using git's command-line tools or through\nthe wiki's web interface. Pandoc's extended version\nof markdown is used as a markup language. Pages\ncan be exported in a number of different formats,\nincluding LaTeX, RTF, OpenOffice ODT, and MediaWiki\nmarkup. Gitit can be configured to display TeX math\n(using jsMath) and highlighted source code (using\nhighlighting-kate).";
      buildType = "Simple";
      };
    components = {
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
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
            ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "6.10") [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ];
          buildable = true;
          };
        };
      };
    }