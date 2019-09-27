let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hpage"; version = "0.10.0"; };
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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."cabal-macosx" or (buildDepError "cabal-macosx"))
            (hsPkgs."cabal-macosx" or (buildDepError "cabal-macosx"))
            (hsPkgs."FindBin" or (buildDepError "FindBin"))
            (hsPkgs."FindBin" or (buildDepError "FindBin"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."eprocess" or (buildDepError "eprocess"))
            (hsPkgs."eprocess" or (buildDepError "eprocess"))
            (hsPkgs."hint-server" or (buildDepError "hint-server"))
            (hsPkgs."hint-server" or (buildDepError "hint-server"))
            (hsPkgs."wxcore" or (buildDepError "wxcore"))
            (hsPkgs."wxcore" or (buildDepError "wxcore"))
            (hsPkgs."wx" or (buildDepError "wx"))
            (hsPkgs."wx" or (buildDepError "wx"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."MonadCatchIO-mtl" or (buildDepError "MonadCatchIO-mtl"))
            (hsPkgs."MonadCatchIO-mtl" or (buildDepError "MonadCatchIO-mtl"))
            ];
          buildable = true;
          };
        };
      };
    }