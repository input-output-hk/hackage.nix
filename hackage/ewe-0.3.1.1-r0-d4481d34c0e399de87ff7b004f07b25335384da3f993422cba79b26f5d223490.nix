{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ewe"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fcardona@eafit.edu.co";
      author = "Juan Francisco Cardona McCormick";
      homepage = "http://github.com/jfcmacro/ewe";
      url = "";
      synopsis = "An interpreter for EWE programming language";
      description = "A Haskell implementation of the EWE programming language originally created and developed by Kent D. Lee. EWE is an extension of the RAM programming language. RAM was created by Sethi. This is use for academic purpose only.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.uuagc-cabal or (pkgs.buildPackages.uuagc-cabal or ((hsPkgs.pkgs-errors).buildToolDepError "uuagc-cabal")))
        (hsPkgs.buildPackages.uulib or (pkgs.buildPackages.uulib or ((hsPkgs.pkgs-errors).buildToolDepError "uulib")))
        (hsPkgs.buildPackages.uuagc or (pkgs.buildPackages.uuagc or ((hsPkgs.pkgs-errors).buildToolDepError "uuagc")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        ];
      };
    components = {
      exes = {
        "ewe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."uuagc-cabal" or ((hsPkgs.pkgs-errors).buildDepError "uuagc-cabal"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
            (hsPkgs.buildPackages.uuagc or (pkgs.buildPackages.uuagc or ((hsPkgs.pkgs-errors).buildToolDepError "uuagc")))
            ];
          buildable = true;
          };
        };
      };
    }