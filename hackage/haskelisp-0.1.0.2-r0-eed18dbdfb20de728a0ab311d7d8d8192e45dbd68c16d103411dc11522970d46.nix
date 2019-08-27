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
      specVersion = "1.10";
      identifier = { name = "haskelisp"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "2016 Takenari Shinohara";
      maintainer = "takenari.shinohara@gmail.com";
      author = "Takenari Shinohara";
      homepage = "http://github.com/githubuser/haskelisp#readme";
      url = "";
      synopsis = "Write Emacs module in Haskell, using Emacs 25's Dynamic Module feature";
      description = "EXPERIMENTAL\nWrite Emacs module in Haskell, using Emacs 25's Dynamic Module feature.\n\n* Only tested with linux.\n* You need to build emacs with --with-modules configuration options\n* You need to specify some ghc-options\n\n>\n-# LANGUAGE ForeignFunctionInterface,OverloadedStrings #-\n> module Main where\n>\n> import Emacs\n>\n> foreign export ccall \"emacs_module_init\" emacsModuleInit :: EmacsModule\n>\n> emacsModuleInit :: EmacsModule\n> emacsModuleInit = defmodule \"sample-module\" \$ do\n>\n>   setVal \"foo\" (Symbol \"bar\")\n>\n>   defun \"square\" \$ \\i -> do\n>     message \"haskell squre function called\"\n>     return \$ (i*i :: Int)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      };
    }