{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "jsaddle-dom"; version = "0.5.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "DOM library that uses jsaddle to support both GHCJS and GHC";
      description = "Documentent Object Model (DOM) functions implemented using jsaddle.\nIt works with both GHCJS and GHC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ] ++ (pkgs.lib).optionals (compiler.isGhcjs && true) [
          (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
          (hsPkgs."ghcjs-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-prim"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }