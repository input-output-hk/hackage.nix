{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "accelerate-arithmetic"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/accelerate-arithmetic/";
      url = "";
      synopsis = "Linear algebra and interpolation using the Accelerate framework";
      description = "Linear algebra and interpolation via the @accelerate@ package.\nThis can be used for computations on GPUs\nbut it does not contain processor optimizations\nor optimizations for CUDA.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."accelerate-utility" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-utility"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."accelerate-arithmetic" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-arithmetic"))
            (hsPkgs."accelerate-utility" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-utility"))
            (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }