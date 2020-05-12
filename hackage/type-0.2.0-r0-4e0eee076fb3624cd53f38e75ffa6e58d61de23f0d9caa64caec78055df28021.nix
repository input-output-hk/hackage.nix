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
      specVersion = "1.6";
      identifier = { name = "type"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Topi Karvonen 2010";
      maintainer = "topi.karvonen@gmail.com";
      author = "Topi Karvonen";
      homepage = "";
      url = "";
      synopsis = "Dynamic casting library with support for arbitrary rank type kinds.";
      description = "By default kinds which contains maximum of 8 stars (*) are supported, for example: @* -> (* -> *) -> ((* -> *) -> *) -> * -> *@.\nBy recompiling the library one can support even more complex types.\nHowever be aware that the amount of code generated increases exponentially.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = if compiler.isGhc && (compiler.version).lt "6.12"
          then false
          else true;
        };
      };
    }