{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hpage"; version = "0.8.1"; };
      license = "BSD-3-Clause";
      copyright = "2009 Fernando \"Brujo\" Benavides";
      maintainer = "greenmellon@gmail.com";
      author = "Fernando \"Brujo\" Benavides";
      homepage = "http://haskell.hpage.com";
      url = "http://code.haskell.org/hpage";
      synopsis = "A scrapbook for Haskell developers";
      description = "λPage is targeted at those haskell developers which also like to work with dynamic GUIs and wish to have something like Smalltalk's Workspace or jPage for Java. Using λPage developers can write haskell expressions, evaluate and test them, load, unload and (of course) reload modules and then, re-evaluate the same expressions. Developed over wxWidgets, λPage is multi-platform by nature and works in every scenario where ghc and wxWidgets work.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hpage" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."MonadCatchIO-mtl" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-mtl"))
            (hsPkgs."MonadCatchIO-mtl" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
            (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
            (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
            (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
            (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
            (hsPkgs."eprocess" or ((hsPkgs.pkgs-errors).buildDepError "eprocess"))
            (hsPkgs."eprocess" or ((hsPkgs.pkgs-errors).buildDepError "eprocess"))
            (hsPkgs."hint-server" or ((hsPkgs.pkgs-errors).buildDepError "hint-server"))
            (hsPkgs."hint-server" or ((hsPkgs.pkgs-errors).buildDepError "hint-server"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."cabal-macosx" or ((hsPkgs.pkgs-errors).buildDepError "cabal-macosx"))
            (hsPkgs."cabal-macosx" or ((hsPkgs.pkgs-errors).buildDepError "cabal-macosx"))
            (hsPkgs."FindBin" or ((hsPkgs.pkgs-errors).buildDepError "FindBin"))
            (hsPkgs."FindBin" or ((hsPkgs.pkgs-errors).buildDepError "FindBin"))
            ];
          buildable = true;
          };
        };
      };
    }