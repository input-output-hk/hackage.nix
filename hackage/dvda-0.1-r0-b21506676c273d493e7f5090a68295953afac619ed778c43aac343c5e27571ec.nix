{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { stresstest = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "dvda"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gregmainland@gmail.edu";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Efficient automatic differentiation";
      description = "DVDA Verifiably Differentiates Algorithmically\n\nThis library provides a symbolic type `Dvda.Expr` which is\nmanipulated mathematically through its Num\\/Fractional\\/Floating instances.\nExpr can be a scalar, vector, or matrix. Binary operations (adding\\/multiplying\\/etc)\nare all elementwise.\n\nMatrix/vector/scalar compatability is enforced at compile time\n\nEfficient derivatives can be computed. Internally reverse automatic differentiation\nis performed including efficient common subexpression elimination.\n\nFunction graphs can be JIT compiled into efficienty functions using \"buildHSFunction\".\nThis is the intended way to use this library.\n\nPretty graphviz plots!\n\nIf the runtime JIT stuff works in terminal ghci but not emacs haskell-mode, you may need to add\n`(setenv \"PATH\" (concatenate 'string (getenv \"PATH\") \":/usr/local/bin\"))` to your .emacs file\n\nTo get started look in `Dvda.Examples` or CompileTest.hs in the github repo";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }