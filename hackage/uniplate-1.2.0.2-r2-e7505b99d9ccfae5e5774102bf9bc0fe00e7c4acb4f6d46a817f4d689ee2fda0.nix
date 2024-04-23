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
    flags = { ghc_6_10 = true; ghc_6_8 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "uniplate"; version = "1.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2006-8, Neil Mitchell";
      maintainer = "ndmitchell@gmail.com";
      author = "Neil Mitchell";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/uniplate/";
      url = "";
      synopsis = "Uniform type generic traversals.";
      description = "Uniplate is a boilerplate removal library, with similar goals to the\noriginal Scrap Your Boilerplate work. It requires few extensions to\nHaskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.ghc_6_10
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."contains" or (errorHandler.buildDepError "contains"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ]
          else if flags.ghc_6_8
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
        buildable = true;
      };
    };
  }