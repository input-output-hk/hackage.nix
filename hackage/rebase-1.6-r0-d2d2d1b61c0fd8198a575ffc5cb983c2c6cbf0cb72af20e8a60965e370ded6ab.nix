{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rebase"; version = "1.6"; };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/rebase";
      url = "";
      synopsis = "A more progressive alternative to the \"base\" package";
      description = "This package is intended for those who are tired of keeping\nlong lists of dependencies to the same essential libraries in each package\nas well as the endless imports of the same APIs all over again.\nIt also supports the modern tendencies in the language.\n\nTo solve those problems this package does the following:\n\n* Reexport the original APIs under the \\\"Rebase\\\" namespace.\n\n* Export all the possible non-conflicting symbols from the \\\"Rebase.Prelude\\\" module.\n\n* Give priority to the modern practices in the conflicting cases.\n\nThe policy behind the package is only to reexport the non-ambiguous\nand non-controversial APIs, which the community has obviously settled on.\nThe package is intended to rapidly evolve with the contribution from the community,\nwith the missing features being added with pull-requests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."contravariant-extras" or ((hsPkgs.pkgs-errors).buildDepError "contravariant-extras"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."selective" or ((hsPkgs.pkgs-errors).buildDepError "selective"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
          ];
        buildable = true;
        };
      };
    }