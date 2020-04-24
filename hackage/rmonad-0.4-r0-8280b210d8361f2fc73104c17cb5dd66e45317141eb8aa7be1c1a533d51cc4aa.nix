{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "rmonad"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Ganesh Sittampalam, Peter Gavin";
      maintainer = "Ganesh Sittampalam <ganesh@earth.li>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Restricted monad library";
      description = "A library for restricted monads based on associated datatypes.\nThis allows datatypes such as Set to be made into monads.\nUsers can either use the NoImplicitPrelude extension and use\nControl.RMonad directly, or use Control.RMonad.AsMonad with\nthe embed and unEmbed combinators to use the normal Prelude\nmonad operations.\nThe 0.4 release mainly adds support for monad transformers.\nThe dependency on the transformers package may be replaced\nby mtl if it seems likely that mtl will stay the standard for\nsome time to come.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or ((hsPkgs.pkgs-errors).buildToolDepError "ghc")))
          ];
        buildable = true;
        };
      };
    }