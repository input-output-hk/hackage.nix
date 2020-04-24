{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dump-core = false; error-messages = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "polysemy"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/polysemy#readme";
      url = "";
      synopsis = "Higher-order, low-boilerplate, zero-cost free monads.";
      description = "Please see the README on GitHub at <https://github.com/isovector/polysemy#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."first-class-families" or ((hsPkgs.pkgs-errors).buildDepError "first-class-families"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or ((hsPkgs.pkgs-errors).buildDepError "th-abstraction"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."type-errors" or ((hsPkgs.pkgs-errors).buildDepError "type-errors"))
          (hsPkgs."type-errors-pretty" or ((hsPkgs.pkgs-errors).buildDepError "type-errors-pretty"))
          (hsPkgs."unagi-chan" or ((hsPkgs.pkgs-errors).buildDepError "unagi-chan"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.7") (hsPkgs."loopbreaker" or ((hsPkgs.pkgs-errors).buildDepError "loopbreaker"))) ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or ((hsPkgs.pkgs-errors).buildDepError "dump-core"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.2.2") (hsPkgs."unsupported-ghc-version" or ((hsPkgs.pkgs-errors).buildDepError "unsupported-ghc-version"));
        buildable = true;
        };
      tests = {
        "polysemy-test" = {
          depends = [
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."first-class-families" or ((hsPkgs.pkgs-errors).buildDepError "first-class-families"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."inspection-testing" or ((hsPkgs.pkgs-errors).buildDepError "inspection-testing"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."polysemy" or ((hsPkgs.pkgs-errors).buildDepError "polysemy"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."th-abstraction" or ((hsPkgs.pkgs-errors).buildDepError "th-abstraction"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."type-errors" or ((hsPkgs.pkgs-errors).buildDepError "type-errors"))
            (hsPkgs."type-errors-pretty" or ((hsPkgs.pkgs-errors).buildDepError "type-errors-pretty"))
            (hsPkgs."unagi-chan" or ((hsPkgs.pkgs-errors).buildDepError "unagi-chan"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.7") (hsPkgs."loopbreaker" or ((hsPkgs.pkgs-errors).buildDepError "loopbreaker"));
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "polysemy-bench" = {
          depends = [
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."first-class-families" or ((hsPkgs.pkgs-errors).buildDepError "first-class-families"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."freer-simple" or ((hsPkgs.pkgs-errors).buildDepError "freer-simple"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."polysemy" or ((hsPkgs.pkgs-errors).buildDepError "polysemy"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."th-abstraction" or ((hsPkgs.pkgs-errors).buildDepError "th-abstraction"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."type-errors" or ((hsPkgs.pkgs-errors).buildDepError "type-errors"))
            (hsPkgs."type-errors-pretty" or ((hsPkgs.pkgs-errors).buildDepError "type-errors-pretty"))
            (hsPkgs."unagi-chan" or ((hsPkgs.pkgs-errors).buildDepError "unagi-chan"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.7") (hsPkgs."loopbreaker" or ((hsPkgs.pkgs-errors).buildDepError "loopbreaker"));
          buildable = true;
          };
        };
      };
    }