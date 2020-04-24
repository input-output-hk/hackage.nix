{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-src-exts-sc"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Artem Chirkin";
      maintainer = "chirkin@arch.ethz.ch";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/haskell-src-exts-sc#readme";
      url = "";
      synopsis = "Pretty print haskell code with comments";
      description = "Generate code from haskell-src-exts AST.\nTo do it, I pretty print and parse AST, then adjust it to insert comments.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          ];
        buildable = true;
        };
      exes = {
        "sc-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."haskell-src-exts-sc" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts-sc"))
            ];
          buildable = if !flags.build-example then false else true;
          };
        };
      };
    }