{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kind-generics-th"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "trupill@gmail.com";
      author = "Alejandro Serrano";
      homepage = "";
      url = "";
      synopsis = "Template Haskell support for generating `GenericK` instances";
      description = "This package provides Template Haskell functionality to\nautomatically derive @GenericK@ instances (from the\n@kind-generics@ library).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."kind-generics" or ((hsPkgs.pkgs-errors).buildDepError "kind-generics"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or ((hsPkgs.pkgs-errors).buildDepError "th-abstraction"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."kind-generics" or ((hsPkgs.pkgs-errors).buildDepError "kind-generics"))
            (hsPkgs."kind-generics-th" or ((hsPkgs.pkgs-errors).buildDepError "kind-generics-th"))
            ];
          buildable = true;
          };
        };
      };
    }