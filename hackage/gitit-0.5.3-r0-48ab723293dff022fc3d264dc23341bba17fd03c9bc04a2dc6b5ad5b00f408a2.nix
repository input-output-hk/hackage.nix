{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { happstack = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "gitit"; version = "0.5.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/gitit/tree/master";
      url = "";
      synopsis = "Wiki using HAppS, git or darcs, and pandoc.";
      description = "Gitit is a wiki program. Pages and uploaded files\nare stored in a git or darcs repository and may be modified\neither by using the VCS's command-line tools or through\nthe wiki's web interface. Pandoc's extended version\nof markdown is used as a markup language. Pages\ncan be exported in a number of different formats,\nincluding LaTeX, RTF, OpenOffice ODT, and MediaWiki\nmarkup. Gitit can be configured to display TeX math\n(using jsMath) and highlighted source code (using\nhighlighting-kate).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gitit" = {
          depends = ([
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
            (hsPkgs."SHA" or ((hsPkgs.pkgs-errors).buildDepError "SHA"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."HStringTemplate" or ((hsPkgs.pkgs-errors).buildDepError "HStringTemplate"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."recaptcha" or ((hsPkgs.pkgs-errors).buildDepError "recaptcha"))
            (hsPkgs."filestore" or ((hsPkgs.pkgs-errors).buildDepError "filestore"))
            (hsPkgs."datetime" or ((hsPkgs.pkgs-errors).buildDepError "datetime"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "6.10") [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ]) ++ (if flags.happstack
            then [
              (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
              ]
            else [
              (hsPkgs."HAppS-Server" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-Server"))
              ]);
          buildable = true;
          };
        };
      };
    }