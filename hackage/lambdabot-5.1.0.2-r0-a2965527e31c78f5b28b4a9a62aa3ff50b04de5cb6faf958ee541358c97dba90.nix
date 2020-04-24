{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lambdabot"; version = "5.1.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook";
      homepage = "https://wiki.haskell.org/Lambdabot";
      url = "";
      synopsis = "Lambdabot is a development tool and advanced IRC bot";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nIt operates as a command line tool, embedded in an editor,\nembedded in GHCi, via internet relay chat and on the web.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lambdabot" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lambdabot-core" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-core"))
            (hsPkgs."lambdabot-haskell-plugins" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-haskell-plugins"))
            (hsPkgs."lambdabot-irc-plugins" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-irc-plugins"))
            (hsPkgs."lambdabot-misc-plugins" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-misc-plugins"))
            (hsPkgs."lambdabot-novelty-plugins" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-novelty-plugins"))
            (hsPkgs."lambdabot-reference-plugins" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-reference-plugins"))
            (hsPkgs."lambdabot-social-plugins" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-social-plugins"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }