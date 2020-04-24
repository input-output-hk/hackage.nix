{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "plist"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, 2012 Yuras Shumovich";
      maintainer = "Yuras Shumovich <shumovichy@gmail.com>";
      author = "Yuras Shumovich <shumovichy@gmail.com>,\nMichael Tolly <tolly@wisc.edu>\nPhilip Lundrigan <philiplundrigan@gmail.com>\nMoritz Angermann <moritz@lichtzwerge.de>";
      homepage = "";
      url = "";
      synopsis = "Generate and parse Mac OS X property list format";
      description = "Simple helper to generate and parse Mac OS X plist format.\nCurrently it supports only 'xml1' format.\nIt is based on Haskell XML Toolbox.\n\nSee\n<http://developer.apple.com/mac/library/documentation/Darwin/Reference/ManPages/man5/plist.5.html>\nfor details about plist format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."dataenc" or ((hsPkgs.pkgs-errors).buildDepError "dataenc"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          ];
        buildable = true;
        };
      };
    }