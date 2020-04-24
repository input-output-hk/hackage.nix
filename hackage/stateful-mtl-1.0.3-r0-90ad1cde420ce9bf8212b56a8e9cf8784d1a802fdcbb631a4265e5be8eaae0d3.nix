{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "stateful-mtl"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wasserman.louis@gmail.com";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Stateful monad transformers with pure evaluation semantics.";
      description = "Stateful monad transformers with pure evaluation semantics, useful for monadically pulling out implementation details of array manipulation and operations in the ST monad.  This package remains in a state of flux, so please notify the author about features you like or dislike.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."MaybeT" or ((hsPkgs.pkgs-errors).buildDepError "MaybeT"))
          ];
        buildable = true;
        };
      };
    }