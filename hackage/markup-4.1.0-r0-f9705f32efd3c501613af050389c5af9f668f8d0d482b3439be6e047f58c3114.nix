{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "markup"; version = "4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Athan Clark";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/markup#readme";
      url = "";
      synopsis = "Abstraction for HTML-embedded content";
      description = "Please see the README on Github at <https://github.com/githubuser/markup#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec-uri" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-uri"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."clay" or ((hsPkgs.pkgs-errors).buildDepError "clay"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          (hsPkgs."mmorph" or ((hsPkgs.pkgs-errors).buildDepError "mmorph"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."path" or ((hsPkgs.pkgs-errors).buildDepError "path"))
          (hsPkgs."path-extra" or ((hsPkgs.pkgs-errors).buildDepError "path-extra"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."urlpath" or ((hsPkgs.pkgs-errors).buildDepError "urlpath"))
          ];
        buildable = true;
        };
      };
    }