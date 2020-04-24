{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quickcheck-transformer"; version = "0.3.1"; };
      license = "MIT";
      copyright = "(c) 2019, Henning Thielemann\n(c) 2013, Nikita Volkov";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "http://hub.darcs.net/thielema/quickcheck-transformer/";
      url = "";
      synopsis = "A GenT monad transformer for QuickCheck library.";
      description = "A fork of QuickCheck-GenT that works for older GHC versions\nand uses the Test module folder like QuickCheck.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }