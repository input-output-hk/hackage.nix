{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lambda-options"; version = "0.9.1.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "thomasedingcode@gmail.com";
      author = "Thomas Eding";
      homepage = "https://github.com/thomaseding/lambda-options";
      url = "";
      synopsis = "Declarative command line parser using type-driven pattern matching.";
      description = "Declarative command line parser using type-driven pattern matching.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."read-bounded" or ((hsPkgs.pkgs-errors).buildDepError "read-bounded"))
          ];
        buildable = true;
        };
      };
    }