{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "llvm-general-quote"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Timo von Holtz 2014";
      maintainer = "Timo von Holtz <tvh@tvholtz.de>";
      author = "Timo von Holtz <tvh@tvholtz.de>";
      homepage = "https://github.com/tvh/llvm-general-quote";
      url = "";
      synopsis = "QuasiQuoting llvm code for llvm-general";
      description = "This package provides a QuasiQuotation for llvm-general.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."symbol" or ((hsPkgs.pkgs-errors).buildDepError "symbol"))
          (hsPkgs."srcloc" or ((hsPkgs.pkgs-errors).buildDepError "srcloc"))
          (hsPkgs."exception-transformers" or ((hsPkgs.pkgs-errors).buildDepError "exception-transformers"))
          (hsPkgs."mainland-pretty" or ((hsPkgs.pkgs-errors).buildDepError "mainland-pretty"))
          (hsPkgs."llvm-general-pure" or ((hsPkgs.pkgs-errors).buildDepError "llvm-general-pure"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          (hsPkgs."th-lift" or ((hsPkgs.pkgs-errors).buildDepError "th-lift"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."llvm-general-quote" or ((hsPkgs.pkgs-errors).buildDepError "llvm-general-quote"))
            (hsPkgs."llvm-general-pure" or ((hsPkgs.pkgs-errors).buildDepError "llvm-general-pure"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }