{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "forsyde-shallow"; version = "3.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2003-2018 ForSyDe Group, KTH/EECS/ELE";
      maintainer = "ForSyDe Group <forsyde-dev@eecs.kth.se>";
      author = "ForSyDe Group, KTH/EECS/ELE";
      homepage = "http://forsyde.ict.kth.se/";
      url = "";
      synopsis = "ForSyDe's Haskell-embedded Domain Specific Language.";
      description = "The ForSyDe (Formal System Design) methodology has been developed with the objective to move system design to a higher level of abstraction and to bridge the abstraction gap by transformational design refinement.\n\nThis library provides a shallow implementation of ForSyDe as a Haskell-embedded Domain Specific Language (DSL). For more information, please see ForSyDe's website: <http://forsyde.ict.kth.se/>. For examples and tutorials using @ForSyDe.Shallow@, check the <https://github.com/forsyde/forsyde-shallow-examples forsyde-shallow-examples> repository.\n\nThis package is a spin-off of the <https://hackage.haskell.org/package/ForSyDe ForSyDe> project and it follows its versioning.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."forsyde-shallow" or ((hsPkgs.pkgs-errors).buildDepError "forsyde-shallow"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }