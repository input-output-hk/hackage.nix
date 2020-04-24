{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hark"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2009 Markus Dittrich";
      maintainer = "Markus Dittrich <haskelladdict@gmail.com>";
      author = "Markus Dittrich <haskelladdict@gmail.com>";
      homepage = "http://code.google.com/p/hark/";
      url = "";
      synopsis = "A Gentoo package query tool.";
      description = "hark is a query tool for the package database of\ninstalled packages on Gentoo Linux systems.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."regex-pcre" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            ];
          buildable = true;
          };
        };
      };
    }