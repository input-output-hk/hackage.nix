{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { pkg-cfg-prefix = true; };
    package = {
      specVersion = "2.0";
      identifier = { name = "singular-factory"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2019 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "https://github.com/bkomuves/singular-factory";
      url = "";
      synopsis = "Multivariate polynomial factorization via bindings to Singular-factory";
      description = "Bindings to Singular-factory. Factory is the subset of the Singular\ncomputer algebra system which does factorization of multivariate\npolynomials (over integers, rationals, and finite fields)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."hgmp" or ((hsPkgs.pkgs-errors).buildDepError "hgmp"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        pkgconfig = if flags.pkg-cfg-prefix
          then [
            (pkgconfPkgs."singular-factory" or ((hsPkgs.pkgs-errors).pkgConfDepError "singular-factory"))
            ]
          else [
            (pkgconfPkgs."factory" or ((hsPkgs.pkgs-errors).pkgConfDepError "factory"))
            ];
        buildable = true;
        };
      tests = {
        "singular-factory-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."singular-factory" or ((hsPkgs.pkgs-errors).buildDepError "singular-factory"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }