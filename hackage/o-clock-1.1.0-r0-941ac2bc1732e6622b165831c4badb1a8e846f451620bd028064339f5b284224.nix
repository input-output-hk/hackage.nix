{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      aeson = false;
      hashable = false;
      deepseq = false;
      serialise = false;
      bench-buildable = false;
      };
    package = {
      specVersion = "2.0";
      identifier = { name = "o-clock"; version = "1.1.0"; };
      license = "MIT";
      copyright = "2018 Serokell";
      maintainer = "Serokell <hi@serokell.io>";
      author = "@serokell";
      homepage = "https://github.com/serokell/o-clock";
      url = "";
      synopsis = "Type-safe time library.";
      description = "See README.md for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ] ++ (pkgs.lib).optionals (flags.aeson) [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ]) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"));
        buildable = true;
        };
      exes = {
        "play-o-clock" = {
          depends = [
            (hsPkgs."o-clock" or ((hsPkgs.pkgs-errors).buildDepError "o-clock"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      tests = {
        "o-clock-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."o-clock" or ((hsPkgs.pkgs-errors).buildDepError "o-clock"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            (hsPkgs."type-spec" or ((hsPkgs.pkgs-errors).buildDepError "type-spec"))
            ];
          buildable = true;
          };
        "o-clock-doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.doctest or (pkgs.buildPackages.doctest or ((hsPkgs.pkgs-errors).buildToolDepError "doctest")))
            ];
          buildable = true;
          };
        "readme-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."o-clock" or ((hsPkgs.pkgs-errors).buildDepError "o-clock"))
            (hsPkgs."markdown-unlit" or ((hsPkgs.pkgs-errors).buildDepError "markdown-unlit"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit or ((hsPkgs.pkgs-errors).buildToolDepError "markdown-unlit")))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "o-clock-benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."o-clock" or ((hsPkgs.pkgs-errors).buildDepError "o-clock"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."tiempo" or ((hsPkgs.pkgs-errors).buildDepError "tiempo"))
            (hsPkgs."time-units" or ((hsPkgs.pkgs-errors).buildDepError "time-units"))
            ] ++ (pkgs.lib).optional (!flags.deepseq) (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"));
          buildable = if !flags.bench-buildable then false else true;
          };
        };
      };
    }