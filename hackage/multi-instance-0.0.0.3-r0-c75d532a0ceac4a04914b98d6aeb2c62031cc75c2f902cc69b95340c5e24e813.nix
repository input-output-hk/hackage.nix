{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "multi-instance"; version = "0.0.0.3"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/multi-instance";
      url = "";
      synopsis = "Typeclasses augmented with a phantom type parameter";
      description = "Provides alternative versions of common typeclasses,\naugmented with a phantom type parameter that allows\nmultiple instances to be specified in the case where\na type has more than one candidate instance for the\noriginal class.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."multi-instance" or ((hsPkgs.pkgs-errors).buildDepError "multi-instance"))
            ];
          buildable = true;
          };
        };
      };
    }