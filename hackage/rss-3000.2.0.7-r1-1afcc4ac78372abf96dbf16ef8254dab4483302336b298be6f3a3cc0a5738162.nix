{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-locale = false; network-uri = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "rss"; version = "3000.2.0.7"; };
      license = "LicenseRef-PublicDomain";
      copyright = "Jeremy Shaw 2004, Bjorn Bringert 2004-2006";
      maintainer = "hvr@gnu.org";
      author = "Jeremy Shaw, Bjorn Bringert";
      homepage = "https://github.com/hvr/rss";
      url = "";
      synopsis = "A library for generating RSS 2.0 feeds.";
      description = "This library allows you to generate [RSS 2.0](http://www.rssboard.org/rss-specification) feeds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
          ] ++ (if flags.old-locale
          then [
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            ]
          else [
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ])) ++ [
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }