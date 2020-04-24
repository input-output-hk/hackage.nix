{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "reactivity"; version = "0.3.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2016 by James Candy";
      maintainer = "info@alkalisoftware.net";
      author = "James Candy";
      homepage = "http://www.alkalisoftware.net/Reactivity.html";
      url = "http://code.haskell.org/reactivity";
      synopsis = "An alternate implementation of push-pull FRP.";
      description = "An alternate implementation of push-pull FRP. This is based on the Reactive package (http://haskell.org/haskellwiki/reactive) (and the sources have been made available in accordance with the GPL [license] of that package).\n\nKnown problems with this version:\n\n* The UI library tends to freeze after a few seconds of use. Don't know whether the problem is semantical or a deadlock. The core library works correctly though.\n\n* There seems to be a speed problem that I can't identify, but it doesn't appear to be fundamental.\n\n* UI library is currently on Windows only, but there are plans....";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
          (hsPkgs."bmp" or ((hsPkgs.pkgs-errors).buildDepError "bmp"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ConcurrentUtils" or ((hsPkgs.pkgs-errors).buildDepError "ConcurrentUtils"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."list-extras" or ((hsPkgs.pkgs-errors).buildDepError "list-extras"))
          ];
        libs = [
          (pkgs."gdi32" or ((hsPkgs.pkgs-errors).sysDepError "gdi32"))
          (pkgs."comdlg32" or ((hsPkgs.pkgs-errors).sysDepError "comdlg32"))
          (pkgs."winspool" or ((hsPkgs.pkgs-errors).sysDepError "winspool"))
          (pkgs."comctl32" or ((hsPkgs.pkgs-errors).sysDepError "comctl32"))
          ];
        buildable = if compiler.isGhc && (compiler.version).lt "6.9"
          then false
          else true;
        };
      };
    }