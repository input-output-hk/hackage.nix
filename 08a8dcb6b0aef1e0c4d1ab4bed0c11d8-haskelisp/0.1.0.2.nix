{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskelisp";
          version = "0.1.0.2";
        };
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
        "haskelisp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.text
          ];
        };
      };
    }