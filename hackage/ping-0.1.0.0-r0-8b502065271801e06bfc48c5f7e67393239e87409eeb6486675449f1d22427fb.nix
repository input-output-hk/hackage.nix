{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "ping"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/ping";
      url = "";
      synopsis = "icmp echo requests";
      description = "This library provides functions that have similar behavior as the\nunix command-line utility ping. In particular, both emit ICMP echo requests\nand wait for responses. This library uses a haskell implementation of ICMP\nrather than invoking `/bin/ping`. This avoids the costly process of starting\na child process. Additionally, there are greater opportunities for reusing\nsockets. The cost of this is that the user must ensure that one of these\nis true:\n\n* The kernel parameter `net.ipv4.ping_group_range` has been configured\nto allow pings to all IP addresses. (preferred solution)\n\n* The process is running with the the `CAP_NET_RAW` capability.\n\n* The process is running as root. (worst solution)\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ip" or ((hsPkgs.pkgs-errors).buildDepError "ip"))
          (hsPkgs."cpu" or ((hsPkgs.pkgs-errors).buildDepError "cpu"))
          (hsPkgs."posix-api" or ((hsPkgs.pkgs-errors).buildDepError "posix-api"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."primitive-containers" or ((hsPkgs.pkgs-errors).buildDepError "primitive-containers"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }