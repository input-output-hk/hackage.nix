{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "lambda-options"; version = "1.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Eding";
      author = "Thomas Eding";
      homepage = "https://github.com/thomaseding/lambda-options";
      url = "";
      synopsis = "Declarative command-line parser using type-driven pattern matching.";
      description = "This is a declarative command-line parser that uses type-driven pattern matching.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."funspection" or ((hsPkgs.pkgs-errors).buildDepError "funspection"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."read-bounded" or ((hsPkgs.pkgs-errors).buildDepError "read-bounded"))
          ];
        buildable = true;
        };
      };
    }