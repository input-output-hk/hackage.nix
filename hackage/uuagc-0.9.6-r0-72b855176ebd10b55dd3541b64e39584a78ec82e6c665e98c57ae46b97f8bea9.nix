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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "uuagc"; version = "0.9.6"; };
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
      exes = {
        "uuagc" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
            ] ++ (if flags.small_base
            then [
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