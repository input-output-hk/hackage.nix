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
      identifier = { name = "add-dependent-file"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Daniil Iaitkov 2026";
      maintainer = "dyaitskov@gmail.com";
      author = "Daniil Iaitskov";
      homepage = "http://github.com/yaitskov/add-dependent-file";
      url = "";
      synopsis = "Safer TH addDependentFile wrapper";
      description = "The library provides a safer wrapper around\n<https://hackage.haskell.org/package/template-haskell/docs/Language-Haskell-TH-Syntax.html#v:addDependentFile addDependentFile>\nthat checks that @extra-source-files@ section in the cabal file contains\n__addDependendFile__ argument and issues a correspondent compilation\nwarning if it does not, because @addDependentFile@ has no effect\notherwise.\n\n== Development environment\n#development-environment#\n\n> $ nix develop\n> $ emacs &\n> $ cabal build\n> $ cabal test";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }