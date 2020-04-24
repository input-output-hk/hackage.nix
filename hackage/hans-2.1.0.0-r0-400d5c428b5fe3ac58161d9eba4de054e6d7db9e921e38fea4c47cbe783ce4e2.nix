{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bounded-channels = false; example = false; halvm = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hans"; version = "2.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "halvm-devel@community.galois.com";
      author = "Galois Inc., Peng Li, Stephan Zdancewic";
      homepage = "";
      url = "";
      synopsis = "IPv4 Network Stack";
      description = "HaNS is a lightweight, pure Haskell network stack that can be used for Haskell\nnetworking in the context of the HaLVM, or with a Linux tap device. Currently,\nHaNS supports 802.3, IPv4, ARP, DHCP (partially), ICMP, UDP, and TCP.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."fingertree" or ((hsPkgs.pkgs-errors).buildDepError "fingertree"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ] ++ (if flags.halvm
          then [
            (hsPkgs."XenDevice" or ((hsPkgs.pkgs-errors).buildDepError "XenDevice"))
            (hsPkgs."communication" or ((hsPkgs.pkgs-errors).buildDepError "communication"))
            ]
          else [
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (flags.bounded-channels) (hsPkgs."BoundedChan" or ((hsPkgs.pkgs-errors).buildDepError "BoundedChan"));
        buildable = true;
        };
      exes = {
        "test" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."hans" or ((hsPkgs.pkgs-errors).buildDepError "hans"))
            ] ++ (pkgs.lib).optional (flags.bounded-channels) (hsPkgs."BoundedChan" or ((hsPkgs.pkgs-errors).buildDepError "BoundedChan"))) ++ (pkgs.lib).optionals (flags.halvm) [
            (hsPkgs."XenDevice" or ((hsPkgs.pkgs-errors).buildDepError "XenDevice"))
            (hsPkgs."RendezvousLib" or ((hsPkgs.pkgs-errors).buildDepError "RendezvousLib"))
            (hsPkgs."HALVMCore" or ((hsPkgs.pkgs-errors).buildDepError "HALVMCore"))
            (hsPkgs."communication" or ((hsPkgs.pkgs-errors).buildDepError "communication"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }