{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Holumbus-Distribution"; version = "0.0.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2008 Stefan Schmidt, Uwe Schmidt";
      maintainer = "Stefan Schmidt <sts@holumbus.org>";
      author = "Stefan Schmidt, Uwe Schmidt";
      homepage = "http://holumbus.fh-wedel.de";
      url = "";
      synopsis = "intra- and inter-program communication";
      description = "Holumbus-Distribution offers Erlang-Style mailboxes for an easy implementation\nof distributed systems in Haskell. The mailboxes can be used to exchange messages\nbetween threads inside a single program or between programs over the network.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."editline" or ((hsPkgs.pkgs-errors).buildDepError "editline"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = { "PortRegistry" = { buildable = true; }; };
      };
    }