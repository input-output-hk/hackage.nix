{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "gopherbot"; version = "0.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2005-2006 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "";
      url = "";
      synopsis = "Spidering robot to download files from Gopherspace";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "gopherbot" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."HDBC-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-postgresql"))
            (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
            ];
          buildable = true;
          };
        };
      };
    }