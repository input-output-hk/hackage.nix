{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "timeout-control"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nathan Howell <nhowell@alphaheavy.com>";
      author = "Nathan Howell <nhowell@alphaheavy.com>";
      homepage = "http://github.com/alphaHeavy/timeout-control";
      url = "";
      synopsis = "Updatable timeouts as a Monad transformer";
      description = "Add updatable timeout functionality to a Monad transformer stack layered on IO";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      };
    }