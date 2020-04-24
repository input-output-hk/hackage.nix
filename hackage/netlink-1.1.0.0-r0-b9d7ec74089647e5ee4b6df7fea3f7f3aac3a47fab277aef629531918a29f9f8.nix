{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "netlink"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc. 2010";
      maintainer = "Markus Ongyerth <ongy@ongy.net>";
      author = "David Anderson";
      homepage = "https://github.com/Ongy/netlink-hs";
      url = "";
      synopsis = "Netlink communication for Haskell";
      description = "Library to comminicate with Linux kernel via Netlink";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."pretty-hex" or ((hsPkgs.pkgs-errors).buildDepError "pretty-hex"))
          ];
        buildable = true;
        };
      exes = {
        "dump_nl80211" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."netlink" or ((hsPkgs.pkgs-errors).buildDepError "netlink"))
            ];
          buildable = true;
          };
        "genlinfo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."netlink" or ((hsPkgs.pkgs-errors).buildDepError "netlink"))
            ];
          buildable = true;
          };
        "dump_rtnetlink" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."netlink" or ((hsPkgs.pkgs-errors).buildDepError "netlink"))
            ];
          buildable = true;
          };
        };
      };
    }