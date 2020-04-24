{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-holes-th"; version = "2.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "klntsky@gmail.com";
      author = "klntsky";
      homepage = "https://github.com/klntsky/haskell-holes-th";
      url = "";
      synopsis = "Infer haskell code by given type.";
      description = "TIP solver for simply typed lambda calculus. Can automatically infer code from type definitions. (TemplateHaskell)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."haskell-holes-th" or ((hsPkgs.pkgs-errors).buildDepError "haskell-holes-th"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }