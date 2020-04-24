{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; debug = false; parsec1 = false; };
    package = {
      specVersion = "1.4";
      identifier = { name = "uni-util"; version = "2.3.0.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "chr.maeder@web.de";
      author = "uniform@informatik.uni-bremen.de";
      homepage = "http://www.informatik.uni-bremen.de/uniform/wb/";
      url = "";
      synopsis = "Utilities for the uniform workbench";
      description = "This package contains various miscellaneous utilities used for the\nold HTk- und uDrawGraph bindings as well as for the MMiSS Workbench.\nThey are kept for compatibility reason and put on hackage to ease\ninstallation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          ] ++ (pkgs.lib).optional (flags.base4) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))) ++ (if flags.parsec1
          then [
            (hsPkgs."parsec1" or ((hsPkgs.pkgs-errors).buildDepError "parsec1"))
            ]
          else [
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ]);
        buildable = true;
        };
      };
    }