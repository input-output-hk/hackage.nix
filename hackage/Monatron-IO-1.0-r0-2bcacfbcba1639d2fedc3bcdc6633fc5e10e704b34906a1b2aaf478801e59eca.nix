{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Monatron-IO"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tob.brandt@gmail.com";
      author = "Tobias Brandt";
      homepage = "https://github.com/kreuzschlitzschraubenzieher/Monatron-IO";
      url = "";
      synopsis = "MonadIO instances for the Monatron transformers.";
      description = "This package defines instances of the\n'Control.Monad.IO.Class.MonadIO' class (see \"Control.Monad.IO.Class\")\nfor all the monad transformers in \"Control.Monatron.Transformer\"\n(except 'Control.Monadtron.Transformer.StepT') and for the\nzipper type (':>') in \"Control.Monad.Zipper\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Monatron" or ((hsPkgs.pkgs-errors).buildDepError "Monatron"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }