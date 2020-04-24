{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "config-value-getopt"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Galois, Inc.";
      maintainer = "emertens@galois.com";
      author = "Eric Mertens";
      homepage = "https://github.com/GaloisInc/config-value-getopt";
      url = "";
      synopsis = "Interface between config-value and System.GetOpt";
      description = "This package allows to set command line configuration\noptions from a file using the config-value syntax.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."config-value" or ((hsPkgs.pkgs-errors).buildDepError "config-value"))
          ];
        buildable = true;
        };
      };
    }