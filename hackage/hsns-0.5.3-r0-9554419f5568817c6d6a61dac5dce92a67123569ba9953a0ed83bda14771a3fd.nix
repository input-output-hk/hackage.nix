{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hsns"; version = "0.5.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "austin@youareinferior.net";
      author = "Austin Seipp";
      homepage = "";
      url = "";
      synopsis = "a miniature network sniffer";
      description = "a tiny network sniffer, written in haskell";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hsns" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."pcap" or ((hsPkgs.pkgs-errors).buildDepError "pcap"))
            ];
          buildable = true;
          };
        };
      };
    }