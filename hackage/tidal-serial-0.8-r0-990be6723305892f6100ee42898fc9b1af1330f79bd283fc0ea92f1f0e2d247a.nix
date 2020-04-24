{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "tidal-serial"; version = "0.8"; };
      license = "GPL-3.0-only";
      copyright = "(c) Lennart Melzer and other contributors, 2016";
      maintainer = "Lennart <lennart@melzer.it>, Alex McLean <alex@slab.org>, Mike Hodnick <mike.hodnick@gmail.com>";
      author = "Lennart Melzer";
      homepage = "http://tidalcycles.org/";
      url = "";
      synopsis = "Serial support for tidal";
      description = "Serial stream for Tidal";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."tidal" or ((hsPkgs.pkgs-errors).buildDepError "tidal"))
          (hsPkgs."serialport" or ((hsPkgs.pkgs-errors).buildDepError "serialport"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }