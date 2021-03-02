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
      specVersion = "1.12";
      identifier = { name = "ghci-ng"; version = "10.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2005 The University of Glasgow, 2008 Claus Reinke, 2012 Kazu Yamamoto, 2014 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "The GHC Team, Chris Done";
      homepage = "https://github.com/chrisdone/ghci-ng";
      url = "";
      synopsis = "Next generation GHCi";
      description = "GHCi plus extra goodies. See README for feature list: https://github.com/chrisdone/ghci-ng#features";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghci-ng" = {
          depends = ((pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."ghc" or (errorHandler.buildDepError "ghc")) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.8") [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ]) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
          buildable = true;
          };
        };
      };
    }