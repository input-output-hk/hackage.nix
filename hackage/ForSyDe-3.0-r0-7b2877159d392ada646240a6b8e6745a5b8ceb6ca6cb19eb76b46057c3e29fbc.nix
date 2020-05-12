{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."type-level" or (errorHandler.buildDepError "type-level"))
          (hsPkgs."parameterized-data" or (errorHandler.buildDepError "parameterized-data"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."packedstring" or (errorHandler.buildDepError "packedstring"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }