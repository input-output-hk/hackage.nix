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
    flags = { debug = false; threaded = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "smuggler2"; version = "0.3.5.2"; };
      license = "MPL-2.0";
      copyright = "2020 jrp2014, Dmitrii Kovanikov, Veronika Romashkina";
      maintainer = "jrp2014";
      author = "jrp2014, Dmitrii Kovanikov, Veronika Romashkina";
      homepage = "https://github.com/jrp2014/smuggler2";
      url = "";
      synopsis = "GHC Source Plugin that helps to minimise imports and generate explicit exports";
      description = "== Usage\nAdd @smuggler2@ to the build dependencies of your project.\n.\nThen add the following to ghc-options: @-fplugin=Smuggler2.Plugin@. See the\nREADME <https://hackage.haskell.org/package/smuggler2> for more details\nand options.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
          (hsPkgs."ghc-exactprint" or (errorHandler.buildDepError "ghc-exactprint"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ] ++ (pkgs.lib).optional (flags.debug) (hsPkgs."text" or (errorHandler.buildDepError "text"));
        buildable = true;
        };
      exes = {
        "ghc-smuggler2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            ];
          buildable = true;
          };
        };
      tests = {
        "smuggler2-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."smuggler2" or (errorHandler.buildDepError "smuggler2"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            ];
          buildable = true;
          };
        };
      };
    }