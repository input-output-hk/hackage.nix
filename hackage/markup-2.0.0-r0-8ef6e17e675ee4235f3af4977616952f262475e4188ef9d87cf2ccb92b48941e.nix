{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "markup"; version = "2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Abstraction for markup languages";
      description = "This library tries to make things more uniformly controlled when working with\nmarkup languages in haskell - namely /deployment/ of markup assets.\n\nDeployment, from this library's perspective, means /how/ something can be\nrendered to markup, yet still achieve the same \"result\" to the end user (namely\nthe DOM).\n\nWe use monad transformers to infer the deployment mechanism for a context of\nmarkup. The three deployment mechanisms provided include /inline/ (content is\nslapped between markup tags), /hosted/ (entirely external - uses raw text as a\nurl), and /local/ (which uses the <hackage.haskell.org/package/urlpath urlpath>\nlibrary to realize what kind of link to create).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."path-extra" or ((hsPkgs.pkgs-errors).buildDepError "path-extra"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."urlpath" or ((hsPkgs.pkgs-errors).buildDepError "urlpath"))
          ];
        buildable = true;
        };
      };
    }