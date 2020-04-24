{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rtnetlink"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Formaltech Inc.";
      maintainer = "Ben Hamlin <protob3n@gmail.com>";
      author = "Ben Hamlin";
      homepage = "https://github.com/protoben/rtnetlink.hs";
      url = "";
      synopsis = "Manipulate network devices, addresses, and routes on Linux";
      description = "A high-level, extensible, pure-Haskell interface to the\nROUTE_NETLINK subsystem of netlink for manipulating\nnetwork devices on Linux.\nRTNetlink provides the RTNL monad to simplify sending\nand receiving messages, pre-built types for manipulating\ndevices and addresses, and typeclasses for creating your\nown messages, based on linux\\/netlink.h,\nlinux\\/rtnetlink.h, et al.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bits-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bits-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."pretty-hex" or ((hsPkgs.pkgs-errors).buildDepError "pretty-hex"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."socket" or ((hsPkgs.pkgs-errors).buildDepError "socket"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "rtnl-link" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."rtnetlink" or ((hsPkgs.pkgs-errors).buildDepError "rtnetlink"))
            ];
          buildable = if flags.examples then true else false;
          };
        "rtnl-address" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."socket" or ((hsPkgs.pkgs-errors).buildDepError "socket"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."rtnetlink" or ((hsPkgs.pkgs-errors).buildDepError "rtnetlink"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "rtnetlink-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."socket" or ((hsPkgs.pkgs-errors).buildDepError "socket"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."linux-namespaces" or ((hsPkgs.pkgs-errors).buildDepError "linux-namespaces"))
            (hsPkgs."rtnetlink" or ((hsPkgs.pkgs-errors).buildDepError "rtnetlink"))
            ];
          buildable = true;
          };
        };
      };
    }