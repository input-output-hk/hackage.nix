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
      specVersion = "2.2";
      identifier = { name = "day-comonoid"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Koji Miyazato";
      maintainer = "viercc@gmail.com";
      author = "Koji Miyazato";
      homepage = "https://github.com/viercc/functor-monad/tree/main/day-comonoid";
      url = "";
      synopsis = "A comonoid w.r.t. Day";
      description = "A type class Comonoid to represend a comonoid w.r.t. Day,\njust like Applicative is a type class of monoid w.r.t. Day.\nSee README.md for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
        ];
        buildable = true;
      };
    };
  }