{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "bind-marshal"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Corey O'Connor <coreyoconnor@gmail.com>";
      author = "Corey O'Connor <coreyoconnor@gmail.com>";
      homepage = "https://github.com/coreyoconnor/bind-marshal";
      url = "";
      synopsis = "Data marshaling library that uses type level equations to optimize buffering.";
      description = "A (in development) high performance data marshaling layer for haskell. Uses a\npair of parameterized monads to represent: Data marshalling actions with\nstatic buffering requirements (EG: Needs no more than 100 bytes available to\nsucceed) ; Data marshalling actions that are a dynamic composition of actions\nwith static buffering requirements.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
          (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."type-level-tf" or ((hsPkgs.pkgs-errors).buildDepError "type-level-tf"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }