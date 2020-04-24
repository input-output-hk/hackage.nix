{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "eliminators"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2017 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/eliminators";
      url = "";
      synopsis = "Dependently typed elimination functions using singletons";
      description = "This library provides eliminators for inductive data types,\nleveraging the power of the @singletons@ library to allow\ndependently typed elimination.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."singleton-nats" or ((hsPkgs.pkgs-errors).buildDepError "singleton-nats"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or ((hsPkgs.pkgs-errors).buildDepError "th-abstraction"))
          (hsPkgs."th-desugar" or ((hsPkgs.pkgs-errors).buildDepError "th-desugar"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."eliminators" or ((hsPkgs.pkgs-errors).buildDepError "eliminators"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
            (hsPkgs."singleton-nats" or ((hsPkgs.pkgs-errors).buildDepError "singleton-nats"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }