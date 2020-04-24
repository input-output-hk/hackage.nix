{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "halberd"; version = "0.1.2.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hesselink@gmail.com";
      author = "Erik Hesselink, Simon Meier, Tom Lokhorst, Roman Cheplyaka";
      homepage = "http://github.com/haskell-suite/halberd/";
      url = "";
      synopsis = "A tool to generate missing import statements for Haskell modules.";
      description = "This tool uses the Haskell Suite [0] to determine\nthe unbound variables and types in your source\ncode, and generate import statements for them. If\nthere are multiple choices, it provides a simple\ninteractive menu for you to choose from. See the\nhome page for more details.\n[0] https://github.com/haskell-suite";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."haskell-packages" or ((hsPkgs.pkgs-errors).buildDepError "haskell-packages"))
          (hsPkgs."haskell-names" or ((hsPkgs.pkgs-errors).buildDepError "haskell-names"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          ];
        buildable = true;
        };
      exes = {
        "halberd" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."halberd" or ((hsPkgs.pkgs-errors).buildDepError "halberd"))
            (hsPkgs."haskell-names" or ((hsPkgs.pkgs-errors).buildDepError "haskell-names"))
            (hsPkgs."haskell-packages" or ((hsPkgs.pkgs-errors).buildDepError "haskell-packages"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            ];
          buildable = true;
          };
        };
      tests = {
        "halberd-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."halberd" or ((hsPkgs.pkgs-errors).buildDepError "halberd"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."haskell-names" or ((hsPkgs.pkgs-errors).buildDepError "haskell-names"))
            (hsPkgs."haskell-packages" or ((hsPkgs.pkgs-errors).buildDepError "haskell-packages"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }