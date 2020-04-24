{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "patronscraper"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "forkk@forkk.net";
      author = "Forkk";
      homepage = "";
      url = "";
      synopsis = "A webpage scraper for Patreon which dumps a list of patrons to a text file.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "patronscraper" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            (hsPkgs."HandsomeSoup" or ((hsPkgs.pkgs-errors).buildDepError "HandsomeSoup"))
            ];
          buildable = true;
          };
        };
      };
    }