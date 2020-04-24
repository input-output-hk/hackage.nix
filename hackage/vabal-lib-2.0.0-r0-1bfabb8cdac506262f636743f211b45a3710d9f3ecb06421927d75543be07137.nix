{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vabal-lib"; version = "2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "franciman12@gmail.com";
      author = "Francesco Magliocca";
      homepage = "https://github.com/vabal/vabal";
      url = "";
      synopsis = "Core algorithms and datatypes used by vabal";
      description = "`vabal-lib` is the library powering [vabal](http://hackage.haskell.org/package/vabal), it provides the tools to analyze a '.cabal' file and\ncheck which versions of `ghc` can comply with the constraints\nimposed on the following dependencies:\n\n* `base`\n\n* `Cabal` (only constraints in the setup-depends stanza are important).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test-package-solver" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."vabal-lib" or ((hsPkgs.pkgs-errors).buildDepError "vabal-lib"))
            ];
          buildable = true;
          };
        };
      };
    }