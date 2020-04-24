{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "soegtk"; version = "0.9.12.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "gtk2hs-devel@lists.sourceforge.net";
      author = "Duncan Coutts <duncan@haskell.org>";
      homepage = "http://haskell.org/gtk2hs/";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          ];
        buildable = true;
        };
      };
    }