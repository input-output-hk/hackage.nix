{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Holumbus-MapReduce"; version = "0.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010 Stefan Schmidt, Uwe Schmidt, Sebastian Reese";
      maintainer = "Stefan Schmidt <sts@holumbus.org>";
      author = "Uwe Schmidt, Stefan Schmidt";
      homepage = "http://holumbus.fh-wedel.de";
      url = "";
      synopsis = "a distributed MapReduce framework";
      description = "This package contains a library and tools for the\ncreation of distributed MapReduce applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."Holumbus-Distribution" or ((hsPkgs.pkgs-errors).buildDepError "Holumbus-Distribution"))
          (hsPkgs."Holumbus-Storage" or ((hsPkgs.pkgs-errors).buildDepError "Holumbus-Storage"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."readline" or ((hsPkgs.pkgs-errors).buildDepError "readline"))
          ];
        buildable = true;
        };
      exes = {
        "Master" = { buildable = true; };
        "MasterDaemon" = { buildable = true; };
        };
      };
    }