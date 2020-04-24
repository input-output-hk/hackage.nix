{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "glazier-react-widget"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/glazier-react-widget#readme";
      url = "";
      synopsis = "Generic widget library using glazier-react";
      description = "Generic widget library using glazier-react";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."disposable" or ((hsPkgs.pkgs-errors).buildDepError "disposable"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."glazier" or ((hsPkgs.pkgs-errors).buildDepError "glazier"))
          (hsPkgs."glazier-react" or ((hsPkgs.pkgs-errors).buildDepError "glazier-react"))
          (hsPkgs."javascript-extras" or ((hsPkgs.pkgs-errors).buildDepError "javascript-extras"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mmorph" or ((hsPkgs.pkgs-errors).buildDepError "mmorph"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pipes-concurrency" or ((hsPkgs.pkgs-errors).buildDepError "pipes-concurrency"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))) ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."ghcjs-base-stub" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base-stub"));
        buildable = true;
        };
      };
    }