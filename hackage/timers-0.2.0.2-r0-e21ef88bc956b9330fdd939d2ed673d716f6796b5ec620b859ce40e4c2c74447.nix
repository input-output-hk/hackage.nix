{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "timers"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Petr Pilař 2012";
      maintainer = "Petr Pilař <maintainer+the.palmik@gmail.com>";
      author = "Petr Pilař";
      homepage = "";
      url = "";
      synopsis = "Simple package that implements timers.";
      description = "Simple package that implements timers. Both \"one-shot\" and \"repeating\" timers are implemented.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."suspend" or ((hsPkgs.pkgs-errors).buildDepError "suspend"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      };
    }