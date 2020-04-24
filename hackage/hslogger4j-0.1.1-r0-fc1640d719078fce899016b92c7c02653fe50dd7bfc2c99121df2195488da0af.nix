{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hslogger4j"; version = "0.1.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2004-2007 John Goerzen";
      maintainer = "bjorn.buckwalter@gmail.com";
      author = "Bjorn Buckwalter";
      homepage = "http://hslogger4j.googlecode.com/";
      url = "";
      synopsis = "hslogger handlers for log4j's XMLLayout";
      description = "Hslogger4j provides handlers for hslogger (John Goerzen's Haskell\nlogging library) that are compatible with log4j's XMLLayout. In\nparticular log messages created by the handlers can be published\ndirectly to the GUI-based log viewer Chainsaw v2.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          ];
        buildable = true;
        };
      };
    }