{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hist-pl-fusion"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/hist-pl/tree/master/fusion";
      url = "";
      synopsis = "Merging historical dictionary with PoliMorf";
      description = "The library provides functions for merging historical dictionary\nwith PoliMorf morphological dictionary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."text-binary" or ((hsPkgs.pkgs-errors).buildDepError "text-binary"))
          (hsPkgs."dawg" or ((hsPkgs.pkgs-errors).buildDepError "dawg"))
          (hsPkgs."polimorf" or ((hsPkgs.pkgs-errors).buildDepError "polimorf"))
          (hsPkgs."hist-pl-dawg" or ((hsPkgs.pkgs-errors).buildDepError "hist-pl-dawg"))
          (hsPkgs."hist-pl-lexicon" or ((hsPkgs.pkgs-errors).buildDepError "hist-pl-lexicon"))
          ];
        buildable = true;
        };
      };
    }