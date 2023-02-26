{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "reverse-list"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022-2023 Marseille Bouchard";
      maintainer = "zankoku.okuno@gmail.com";
      author = "Marseille Bouchard";
      homepage = "https://github.com/edemko/reverse-list";
      url = "";
      synopsis = "reversed lists/snoc lists";
      description = "The key idea of this library is to leverage the type system to control the performance characteristics of list-manipulation code.\nIt defines the type `RList`, which is a snoc-list rather than a cons-list.\nIt also creates a symmetric module for cons-lists, which focuses on the efficient and safe use of linked lists.\nSee README.md for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contiguous" or (errorHandler.buildDepError "contiguous"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }