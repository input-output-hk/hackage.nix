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
      identifier = { name = "mkcabal"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "2005-07, Don Stewart";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/mkcabal";
      url = "";
      synopsis = "Generate cabal files for a Haskell project";
      description = "Generate cabal files for a Haskell project";
      buildType = "Custom";
      };
    components = {
      exes = {
        "mkcabal" = {
          depends = [
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
          };
        };
      };
    }