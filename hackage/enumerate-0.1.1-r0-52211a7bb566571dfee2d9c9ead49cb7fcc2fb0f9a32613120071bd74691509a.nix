{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "enumerate"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "samboosalis@gmail.com";
      author = "Sam Boosalis";
      homepage = "https://github.com/sboosali/enumerate";
      url = "";
      synopsis = "enumerate all the values in a finite type (automatically)";
      description = "provides (1) a typeclass for enumerating all values in a finite type, (2) a generic instance for automatic deriving, and (3) helpers that reify functions (partial or total, monadic or pure) into a Map.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."MemoTrie" or ((hsPkgs.pkgs-errors).buildDepError "MemoTrie"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "enumerate-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."enumerate" or ((hsPkgs.pkgs-errors).buildDepError "enumerate"))
            ];
          buildable = true;
          };
        };
      };
    }