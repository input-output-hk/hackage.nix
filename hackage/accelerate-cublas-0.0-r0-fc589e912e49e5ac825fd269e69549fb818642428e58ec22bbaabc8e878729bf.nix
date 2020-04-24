{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "accelerate-cublas"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/accelerate-cublas/";
      url = "";
      synopsis = "Basic Linear Algebra using native CUBLAS library";
      description = "Basic Linear Algebra using native CUBLAS library.\nCurrently only support for the most basic batched matrix operations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."accelerate-arithmetic" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-arithmetic"))
          (hsPkgs."accelerate-utility" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-utility"))
          (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"))
          (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          (hsPkgs."cublas" or ((hsPkgs.pkgs-errors).buildDepError "cublas"))
          (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "accelerate-cublas-demo" = {
          depends = [
            (hsPkgs."accelerate-cublas" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cublas"))
            (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"))
            (hsPkgs."accelerate-arithmetic" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-arithmetic"))
            (hsPkgs."accelerate-utility" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-utility"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."cublas" or ((hsPkgs.pkgs-errors).buildDepError "cublas"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }