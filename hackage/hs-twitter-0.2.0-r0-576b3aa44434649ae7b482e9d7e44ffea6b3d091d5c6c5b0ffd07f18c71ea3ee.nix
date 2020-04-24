{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hs-twitter"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sigbjorn Finne <sof@forkio.com>";
      author = "Sigbjorn Finne";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to the Twitter API";
      description = "The hs-twitter API binding lets you access twitter.com's\nresources and methods from Haskell. Implements the\nfull API, as specified at <http://apiwiki.twitter.com/REST+API+Documentation>\n\nFor more info on use, please visit <http://haskell.forkIO.com/twitter>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."mime" or ((hsPkgs.pkgs-errors).buildDepError "mime"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }