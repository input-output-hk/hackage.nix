{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { stresstest = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "dvda"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gregmainland@gmail.edu";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Efficient automatic differentiation";
      description = "dvda == DVDA Verifiably Differentiates Algorithmically\n\nThis library provides a symbolic type `Dvda.Expr` which is\nmanipulated mathematically through its Num\\/Fractional\\/Floating instances.\nExpr can be a scalar, vector, or matrix. Binary operations (adding\\/multiplying\\/etc)\nare all elementwise.\n\nMatrix/vector/scalar safety is enforced at compile time\n\nEfficient derivatives can be computed. Internally reverse automatic differentiation\nis performed including efficient common subexpression elimination.\n\nFunction graphs can be JIT compiled into efficient functions using \"buildHSFunction\".\nThis is the intended way to use this library.\n\nPretty graphviz plots!\n\nIf the runtime JIT stuff works in terminal ghci but not emacs haskell-mode, you may need to add\n`(setenv \"PATH\" (concatenate 'string (getenv \"PATH\") \":/usr/local/bin\"))` to your .emacs file\n\nTo get started look in `Dvda.Examples` or CompileTest.hs in the github repo";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."plugins" or ((hsPkgs.pkgs-errors).buildDepError "plugins"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }