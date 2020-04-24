{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "markup"; version = "4.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Abstraction for HTML-embedded content";
      description = "This library tries to simplify deployment of common HTML constructs, for different\nHTML engines.\n\nDeployment, from this library's perspective, means /how/ something can be\nrendered to markup, yet still achieve the same \"result\" to the end user (namely\nthe DOM). For instance, we could use a @<link>@ tag to reference external Css,\nor we might insert the Css code /inline/ a @<style>@ tag.\n\nWe use simple tags to infer the deployment mechanism for a context of\nmarkup. The three deployment mechanisms provided include\n\n* /inline/ - the asset inserted between markup tags\n\n* /local/ - assets on the current server\n\n* /remote/ - assets referenced with a complete URI";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."clay" or ((hsPkgs.pkgs-errors).buildDepError "clay"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          (hsPkgs."mmorph" or ((hsPkgs.pkgs-errors).buildDepError "mmorph"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
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