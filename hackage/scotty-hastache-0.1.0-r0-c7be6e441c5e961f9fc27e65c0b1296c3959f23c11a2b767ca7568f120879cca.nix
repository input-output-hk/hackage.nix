{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "scotty-hastache"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Dan Frumin <difrumin@gmail.com>";
      maintainer = "difrumin@gmail.com";
      author = "Dan Frumin";
      homepage = "https://github.com/co-dan/scotty-hastache";
      url = "";
      synopsis = "Easy Mustache templating support for Scotty";
      description = "This library provides a small templating DSL extension\nfor Scotty via the `hastache` library.\n\n[Scotty] is a light-weighted Web framework\\/router <http://hackage.haskell.org/package/scotty>\n\n[Hashache] is a Haskell implementation of the Mustache templates: <http://mustache.github.io/>, <http://hackage.haskell.org/package/hastache>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hastache" or ((hsPkgs.pkgs-errors).buildDepError "hastache"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          ];
        buildable = true;
        };
      };
    }