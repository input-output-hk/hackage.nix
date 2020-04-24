{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "CCA"; version = "0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H Liu <paul@thev.net>";
      author = "Paul H Liu <paul@thev.net>, Eric Cheng <eric.cheng@aya.yale.edu>";
      homepage = "not available";
      url = "";
      synopsis = "preprocessor and library for Causal Commutative Arrows (CCA)";
      description = "A library that provides normalization support via Template\nHaskell for CCAs, and a modified preprocessor based on\nRoss Paterson's arrowp that reads Haskell with arrow notation\nand outputs Haskell 98 + Template Haskell sources for\nuse with CCA library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "6.10") [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      exes = {
        "ccap" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."haskell-src" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src"))
            ];
          buildable = true;
          };
        };
      };
    }