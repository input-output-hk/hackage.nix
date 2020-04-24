{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dumb-cas"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsagemue \$ uni-koeln.de";
      author = "Justus Sagemüller";
      homepage = "";
      url = "";
      synopsis = "A computer “algebra” system that knows nothing about algebra, at the core.";
      description = "This is a framework for untyped, symbolic computations like a CAS\ndoes, without any baked-in rules whatsoever but the ability to\ndefine expressions very consisely, as well as any transformation\nrules you want. The idea is basically to combine the flexibility\nof a Lisp with the conciseness of a Regex engine, using syntax similar\nto Haskell's standard pattern matching.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."decimal-literals" or ((hsPkgs.pkgs-errors).buildDepError "decimal-literals"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."dumb-cas" or ((hsPkgs.pkgs-errors).buildDepError "dumb-cas"))
            ];
          buildable = true;
          };
        };
      };
    }