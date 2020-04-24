{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bech32-th"; version = "1.0.2"; };
      license = "Apache-2.0";
      copyright = "2020 IOHK";
      maintainer = "operations@iohk.io, erikd@mega-nerd.com, jonathan.knowles@iohk.io";
      author = "IOHK Engineering Team";
      homepage = "https://github.com/input-output-hk/bech32";
      url = "";
      synopsis = "Template Haskell extensions to the Bech32 library.";
      description = "Template Haskell extensions to the Bech32 library, including\nquasi-quoters for compile-time checking of Bech32 string\nliterals.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bech32" or ((hsPkgs.pkgs-errors).buildDepError "bech32"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "bech32-th-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bech32" or ((hsPkgs.pkgs-errors).buildDepError "bech32"))
            (hsPkgs."bech32-th" or ((hsPkgs.pkgs-errors).buildDepError "bech32-th"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }