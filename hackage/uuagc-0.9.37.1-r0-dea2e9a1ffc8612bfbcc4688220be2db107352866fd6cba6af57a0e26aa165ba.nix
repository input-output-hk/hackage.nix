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
    flags = { compatibility1 = true; compatibility2 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "uuagc"; version = "0.9.37.1"; };
      license = "LicenseRef-GPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Arie Middelkoop <ariem@cs.uu.nl>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
      url = "";
      synopsis = "Attribute Grammar System of Universiteit Utrecht";
      description = "Generates Haskell files from an attribute grammar specification";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "uuagc" = {
          depends = ([
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            ] ++ (if flags.compatibility1
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              ])) ++ (if flags.compatibility2
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
          };
        };
      };
    }