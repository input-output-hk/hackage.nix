{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "egison-pattern-src-haskell-mode";
        version = "0.2.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright 2020 coord_e";
      maintainer = "coord_e <me@coord-e.com>, Satoshi Egi <egi@egison.org>";
      author = "coord_e";
      homepage = "https://github.com/egison/egison-pattern-src#readme";
      url = "";
      synopsis = "Parser and pretty printer for Egison pattern expressions in Haskell source code";
      description = "@egison-pattern-src-haskell-mode@ provides a parser and pretty printer for @egison-pattern-src@ to use it in Haskell source code.\nSee <https://github.com/egison/egison-pattern-src> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."egison-pattern-src" or ((hsPkgs.pkgs-errors).buildDepError "egison-pattern-src"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."egison-pattern-src" or ((hsPkgs.pkgs-errors).buildDepError "egison-pattern-src"))
            (hsPkgs."egison-pattern-src-haskell-mode" or ((hsPkgs.pkgs-errors).buildDepError "egison-pattern-src-haskell-mode"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover or (pkgs.buildPackages.tasty-discover or ((hsPkgs.pkgs-errors).buildToolDepError "tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }