{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "2.4";
      identifier = {
        name = "haskell-stack-trace-plugin";
        version = "0.1.1.1";
        };
      license = "MIT";
      copyright = "2018-2020 Shinya Yamaguchi";
      maintainer = "ingronze@gmail.com";
      author = "Shinya Yamaguchi";
      homepage = "https://github.com/waddlaw/haskell-stack-trace-plugin";
      url = "";
      synopsis = "haskell-stack-trace-plugin";
      description = "This plugin allow implicitly add HasCallStack class to every top-level function for all module. Hence, we can to get completely continuous call stack.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-stack-trace-plugin" or ((hsPkgs.pkgs-errors).buildDepError "haskell-stack-trace-plugin"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }