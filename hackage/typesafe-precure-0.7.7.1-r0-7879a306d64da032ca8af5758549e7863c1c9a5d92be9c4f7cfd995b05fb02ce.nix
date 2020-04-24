{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "typesafe-precure"; version = "0.7.7.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Yuji Yamamoto";
      maintainer = "whosekiteneverfly@gmail.com";
      author = "Yuji Yamamoto";
      homepage = "https://github.com/igrep/typesafe-precure#readme";
      url = "";
      synopsis = "Type-safe transformations and purifications of PreCures (Japanese Battle Heroine)";
      description = "See README.md for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
          (hsPkgs."autoexporter" or ((hsPkgs.pkgs-errors).buildDepError "autoexporter"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."monad-skeleton" or ((hsPkgs.pkgs-errors).buildDepError "monad-skeleton"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."th-data-compat" or ((hsPkgs.pkgs-errors).buildDepError "th-data-compat"))
          (hsPkgs."th-strict-compat" or ((hsPkgs.pkgs-errors).buildDepError "th-strict-compat"))
          (hsPkgs."th-utilities" or ((hsPkgs.pkgs-errors).buildDepError "th-utilities"))
          ];
        buildable = true;
        };
      tests = {
        "typesafe-precure-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."typesafe-precure" or ((hsPkgs.pkgs-errors).buildDepError "typesafe-precure"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }