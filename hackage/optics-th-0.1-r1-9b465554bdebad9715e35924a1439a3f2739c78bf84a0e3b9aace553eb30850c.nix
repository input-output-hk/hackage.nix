{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "optics-th"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "optics@well-typed.com";
      author = "Andrzej Rybczak";
      homepage = "";
      url = "";
      synopsis = "Optics construction using TemplateHaskell";
      description = "This package is part of the @optics@ package family.  It provides machinery to\nconstruct optics using @TemplateHaskell@.\n\nSee the @template-haskell-optics@ package for optics to work with @template-haskell@ types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."optics-core" or ((hsPkgs.pkgs-errors).buildDepError "optics-core"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or ((hsPkgs.pkgs-errors).buildDepError "th-abstraction"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "optics-th-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."optics-core" or ((hsPkgs.pkgs-errors).buildDepError "optics-core"))
            (hsPkgs."optics-th" or ((hsPkgs.pkgs-errors).buildDepError "optics-th"))
            ];
          buildable = true;
          };
        };
      };
    }