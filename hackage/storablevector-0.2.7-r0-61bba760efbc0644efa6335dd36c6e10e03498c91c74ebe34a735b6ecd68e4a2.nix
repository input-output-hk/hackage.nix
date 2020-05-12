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
    flags = {
      splitbase = true;
      separatesyb = true;
      functorinstance = true;
      buildtests = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "storablevector"; version = "0.2.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <storablevector@henning-thielemann.de>";
      author = "Spencer Janssen <sjanssen@cse.unl.edu>, Henning Thielemann <storablevector@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Storable_Vector";
      url = "";
      synopsis = "Fast, packed, strict storable arrays with a list interface like ByteString";
      description = "Fast, packed, strict storable arrays\nwith a list interface,\na chunky lazy list interface with variable chunk size\nand an interface for write access via the @ST@ monad.\nThis is much like @bytestring@ and @binary@ but can be used for every 'Foreign.Storable.Storable' type.\nSee also packages\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/vector>,\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/uvector>\nwith a similar intention.\n\nWe do not provide advanced fusion optimization,\nsince especially for lazy vectors\nthis would either be incorrect or not applicable.\nFor fusion see <http://hackage.haskell.org/cgi-bin/hackage-scripts/package/storablevector-streamfusion>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ (if compiler.isJhc && true
          then [
            (hsPkgs."statethread" or (errorHandler.buildDepError "statethread"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]
          else if flags.splitbase
            then if flags.separatesyb
              then [
                (hsPkgs."base" or (errorHandler.buildDepError "base"))
                (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
                ]
              else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      exes = {
        "test" = {
          depends = (pkgs.lib).optionals (flags.buildtests) ([
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]));
          buildable = if flags.buildtests then true else false;
          };
        "speedtest" = {
          depends = (pkgs.lib).optionals (flags.buildtests) ([
            (hsPkgs."sample-frame" or (errorHandler.buildDepError "sample-frame"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = if flags.buildtests then true else false;
          };
        "speedpointer" = {
          depends = (pkgs.lib).optional (flags.buildtests) (hsPkgs."base" or (errorHandler.buildDepError "base"));
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }