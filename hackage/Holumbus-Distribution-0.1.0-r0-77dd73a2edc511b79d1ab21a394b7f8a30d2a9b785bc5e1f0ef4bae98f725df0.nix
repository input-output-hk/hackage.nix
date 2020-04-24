{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Holumbus-Distribution"; version = "0.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010 Stefan Schmidt, Uwe Schmidt, Sebastian Reese";
      maintainer = "Stefan Schmidt <sts@holumbus.org>";
      author = "Stefan Schmidt, Uwe Schmidt";
      homepage = "http://holumbus.fh-wedel.de";
      url = "";
      synopsis = "intra- and inter-program communication";
      description = "Holumbus-Distribution offers distributed data structures like Chan, MVar or functions.\nThese datatype can be used between different programs on different computers to exchange\ndata. With the help of this library it is possible to build Erlang-Style mailboxes for an\neasy implementation of distributed systems in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."readline" or ((hsPkgs.pkgs-errors).buildDepError "readline"))
          ];
        buildable = true;
        };
      exes = {
        "PortRegistry" = { buildable = true; };
        "PortRegistryDaemon" = { buildable = true; };
        };
      };
    }