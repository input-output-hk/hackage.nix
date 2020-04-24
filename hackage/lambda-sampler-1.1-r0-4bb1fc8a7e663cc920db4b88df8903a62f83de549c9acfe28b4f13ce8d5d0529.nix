{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lambda-sampler"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-17 Maciej Bendkowski";
      maintainer = "Maciej Bendkowski <maciej.bendkowski@tcs.uj.edu.pl>";
      author = "Maciej Bendkowski";
      homepage = "https://github.com/maciej-bendkowski/lambda-sampler";
      url = "";
      synopsis = "Boltzmann sampler utilities for lambda calculus.";
      description = "Uniform generation of plain and closed lambda terms\nin the de Bruijn notation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "lambda-sampler-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."lambda-sampler" or ((hsPkgs.pkgs-errors).buildDepError "lambda-sampler"))
            ];
          buildable = true;
          };
        };
      };
    }