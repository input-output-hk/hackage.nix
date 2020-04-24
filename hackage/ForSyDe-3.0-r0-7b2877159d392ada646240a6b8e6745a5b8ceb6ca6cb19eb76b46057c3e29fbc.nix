{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "ForSyDe"; version = "3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2003-2008 SAM group, KTH/ICT/ECS";
      maintainer = "forsyde-dev@ict.kth.se";
      author = "SAM group, KTH/ICT/ECS";
      homepage = "http://www.ict.kth.se/org/ict/ecs/sam/projects/forsyde/www/";
      url = "";
      synopsis = "ForSyDe's Haskell-embedded Domain Specific Language.";
      description = "The ForSyDe (Formal System Design) methodology has been developed with the objective to move system design to a higher level of abstraction and to bridge the abstraction gap by transformational design refinement.\nThis library provides ForSyDe's implementation as a Haskell-embedded Domain Specific Language (DSL). For more information, please see ForSyDe's website: <http://www.ict.kth.se/org/ict/ecs/sam/projects/forsyde/www/>.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."type-level" or ((hsPkgs.pkgs-errors).buildDepError "type-level"))
          (hsPkgs."parameterized-data" or ((hsPkgs.pkgs-errors).buildDepError "parameterized-data"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."packedstring" or ((hsPkgs.pkgs-errors).buildDepError "packedstring"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }