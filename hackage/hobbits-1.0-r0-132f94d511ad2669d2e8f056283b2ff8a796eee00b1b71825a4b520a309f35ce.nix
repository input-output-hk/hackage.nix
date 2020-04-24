{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0.1";
      identifier = { name = "hobbits"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "emw4@rice.edu";
      author = "Eddy Westbrook, Nicolas Frisby, Paul Brauner";
      homepage = "";
      url = "";
      synopsis = "A library for canonically representing terms with binding";
      description = "A library for canonically representing terms with binding via a\nconstructor for introducing fresh names and a restricted API that avoids the\nneed for alpha-equivalence.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."type-equality" or ((hsPkgs.pkgs-errors).buildDepError "type-equality"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }