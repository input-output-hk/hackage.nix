{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "ghc-mod"; version = "5.5.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Daniel Gröber <dxld@darkboxed.org>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>,\nDaniel Gröber <dxld@darkboxed.org>,\nAlejandro Serrano <trupill@gmail.com>,\nNikolay Yakimov <root@livid.pp.ru>";
      homepage = "http://www.mew.org/~kazu/proj/ghc-mod/";
      url = "";
      synopsis = "Happy Haskell Programming";
      description = "ghc-mod is a backend program to enrich Haskell programming in editors. It\nstrives to offer most of the features one has come to expect from modern IDEs\nin any editor.\nghc-mod provides a library for other haskell programs to use as well as a\nstandalone program for easy editor integration. All of the fundamental\nfunctionality of the frontend program can be accessed through the library\nhowever many implementation details are hidden and if you want to\nsignificantly extend ghc-mod you should submit these changes upstream instead\nof implementing them on top of the library.\nFor more information, please see its home page.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cabal-helper" or ((hsPkgs.pkgs-errors).buildDepError "cabal-helper"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
          (hsPkgs."ghc-syb-utils" or ((hsPkgs.pkgs-errors).buildDepError "ghc-syb-utils"))
          (hsPkgs."hlint" or ((hsPkgs.pkgs-errors).buildDepError "hlint"))
          (hsPkgs."monad-journal" or ((hsPkgs.pkgs-errors).buildDepError "monad-journal"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."djinn-ghc" or ((hsPkgs.pkgs-errors).buildDepError "djinn-ghc"))
          (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.5") [
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      exes = {
        "ghc-mod" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."ghc-mod" or ((hsPkgs.pkgs-errors).buildDepError "ghc-mod"))
            ];
          buildable = true;
          };
        "ghc-modi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."ghc-mod" or ((hsPkgs.pkgs-errors).buildDepError "ghc-mod"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = if compiler.isGhc && false then false else true;
          };
        "spec" = {
          depends = [
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."executable-path" or ((hsPkgs.pkgs-errors).buildDepError "executable-path"));
          buildable = true;
          };
        };
      };
    }