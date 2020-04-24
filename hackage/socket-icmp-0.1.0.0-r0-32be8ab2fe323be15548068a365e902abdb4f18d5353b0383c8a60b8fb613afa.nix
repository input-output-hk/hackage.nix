{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "socket-icmp"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Tom Manderson";
      maintainer = "me@trm.io";
      author = "Tom Manderson";
      homepage = "https://github.com/TRManderson/socket-icmp#readme";
      url = "";
      synopsis = "Definitions for ICMP with the `socket` library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."socket" or ((hsPkgs.pkgs-errors).buildDepError "socket"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }