{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hist-pl"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/hist-pl/tree/master/umbrella";
      url = "";
      synopsis = "Umbrella package for the historical dictionary of Polish";
      description = "The package provides a tool for creating and searching the\nhistorical dictionary of Polish.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."hist-pl-lexicon" or ((hsPkgs.pkgs-errors).buildDepError "hist-pl-lexicon"))
          (hsPkgs."hist-pl-transliter" or ((hsPkgs.pkgs-errors).buildDepError "hist-pl-transliter"))
          (hsPkgs."morfeusz" or ((hsPkgs.pkgs-errors).buildDepError "morfeusz"))
          ];
        buildable = true;
        };
      exes = {
        "hist-pl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
            (hsPkgs."polimorf" or ((hsPkgs.pkgs-errors).buildDepError "polimorf"))
            (hsPkgs."hist-pl-lexicon" or ((hsPkgs.pkgs-errors).buildDepError "hist-pl-lexicon"))
            (hsPkgs."hist-pl-fusion" or ((hsPkgs.pkgs-errors).buildDepError "hist-pl-fusion"))
            (hsPkgs."hist-pl-dawg" or ((hsPkgs.pkgs-errors).buildDepError "hist-pl-dawg"))
            (hsPkgs."hist-pl-lmf" or ((hsPkgs.pkgs-errors).buildDepError "hist-pl-lmf"))
            ];
          buildable = true;
          };
        };
      };
    }