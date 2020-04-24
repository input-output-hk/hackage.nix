{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fastparser"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Simon Marechal";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "https://github.com/bartavelle/fastparser#readme";
      url = "";
      synopsis = "A fast, but bare bones, bytestring parser combinators library.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."thyme" or ((hsPkgs.pkgs-errors).buildDepError "thyme"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."bytestring-lexing" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-lexing"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."kan-extensions" or ((hsPkgs.pkgs-errors).buildDepError "kan-extensions"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      benchmarks = {
        "timestamps" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fastparser" or ((hsPkgs.pkgs-errors).buildDepError "fastparser"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }