{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-tools-prettyprint"; version = "1.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "Pretty printing of Haskell-Tools AST";
      description = "Converts the Haskell-Tools AST to text. Prepares the AST for this conversion. If the AST was created from the GHC AST this pretty printing will result in the original source code. Generated AST parts will get the default formatting. Works using the source annotations that are present in the AST. Creates a rose tree first to simplify the conversion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."references" or ((hsPkgs.pkgs-errors).buildDepError "references"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."haskell-tools-ast" or ((hsPkgs.pkgs-errors).buildDepError "haskell-tools-ast"))
          ];
        buildable = true;
        };
      };
    }