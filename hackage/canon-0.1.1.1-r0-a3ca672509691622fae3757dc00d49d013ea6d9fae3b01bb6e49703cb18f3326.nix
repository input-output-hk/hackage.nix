{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "canon"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "fws dot nyc at gmail dot com";
      author = "Frederick Schneider";
      homepage = "https://github.com/grandpascorpion/canon";
      url = "";
      synopsis = "Arithmetic for Psychedelically Large Numbers";
      description = "This library allows one to manipulate numbers of practically unlimited size by keeping them in factored \"canonical\" form, where possible.  This original concept has been expanded to support arbitrary integral hyperoperations.  For manipulating sums and differences, there is additional code to factor expressions of special forms.  Please refer to CanonManualTests.hs and the .odp presentation files for usage examples and background.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."arithmoi" or ((hsPkgs.pkgs-errors).buildDepError "arithmoi"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }