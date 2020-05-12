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
      specVersion = "1.8";
      identifier = { name = "th-lift"; version = "0.7.8"; };
      license = "BSD-3-Clause";
      copyright = "© 2006 Ian Lynagh, © 2010-2014 Mathieu Boespflug";
      maintainer = "Mathieu Boespflug <mboes@tweag.net>";
      author = "Ian Lynagh";
      homepage = "http://github.com/mboes/th-lift";
      url = "";
      synopsis = "Derive Template Haskell's Lift class for datatypes.";
      description = "Derive Template Haskell's Lift class for datatypes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ] ++ (if compiler.isGhc && (compiler.version).lt "6.12"
          then [
            (hsPkgs."packedstring" or (errorHandler.buildDepError "packedstring"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ]
          else [
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ]);
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            ] ++ (if compiler.isGhc && (compiler.version).lt "6.12"
            then [
              (hsPkgs."packedstring" or (errorHandler.buildDepError "packedstring"))
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              ]
            else [
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              ]);
          buildable = true;
          };
        };
      };
    }