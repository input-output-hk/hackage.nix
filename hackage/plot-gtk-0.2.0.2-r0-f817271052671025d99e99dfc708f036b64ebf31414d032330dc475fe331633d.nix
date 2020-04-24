{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "plot-gtk"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2010, 2012, 2014";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/plot";
      url = "";
      synopsis = "GTK plots and interaction with GHCi";
      description = "Allows use of 'plot' package with GTK\n\n* Provides a mechanism to display and update plots from GHCi\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."plot" or ((hsPkgs.pkgs-errors).buildDepError "plot"))
          ];
        buildable = true;
        };
      };
    }