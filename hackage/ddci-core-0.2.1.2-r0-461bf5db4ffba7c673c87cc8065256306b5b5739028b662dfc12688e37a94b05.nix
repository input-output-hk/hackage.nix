{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ddci-core"; version = "0.2.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciple Core language interactive interpreter.";
      description = "Disciple Core is an explicitly typed language based on System-F2, intended\nas an intermediate representation for a compiler. In addition to the features of\nSystem-F2 it supports region, effect and closure typing. Evaluation order is\nleft-to-right call-by-value by default, but explicit lazy evaluation is also supported.\nThere is also a capability system to track whether objects are mutable or constant,\nand to ensure that computations that perform visible side effects are not suspended with\nlazy evaluation.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ddci-core" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."ddc-base" or ((hsPkgs.pkgs-errors).buildDepError "ddc-base"))
            (hsPkgs."ddc-core" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core"))
            (hsPkgs."ddc-core-eval" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-eval"))
            (hsPkgs."ddc-core-simpl" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-simpl"))
            ];
          buildable = true;
          };
        };
      };
    }