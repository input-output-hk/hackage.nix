{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sxml"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "© 2016 ARJANEN Loïc Jean David";
      maintainer = "ARJANEN Loïc Jean David <arjanen.loic@gmail.com>";
      author = "ARJANEN Loïc Jean David <arjanen.loic@gmail.com>";
      homepage = "http://blog.luigiscorner.com/";
      url = "";
      synopsis = "A SXML-parser";
      description = "This library parses and write <http://okmij.org/ftp/Scheme/SXML.html SXML> files, using datatypes from the <https://hackage.haskell.org/package/xml-types xml-types> package to represent their structure. It currently only features a DOM-style parser.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."polyparse" or ((hsPkgs.pkgs-errors).buildDepError "polyparse"))
          ];
        buildable = true;
        };
      };
    }