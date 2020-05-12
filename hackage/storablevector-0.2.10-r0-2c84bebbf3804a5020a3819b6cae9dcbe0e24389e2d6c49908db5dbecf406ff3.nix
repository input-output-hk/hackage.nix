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
    flags = { splitbase = true; separatesyb = true; };
    package = {
      specVersion = "1.14";
      identifier = { name = "storablevector"; version = "0.2.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <storablevector@henning-thielemann.de>";
      author = "Spencer Janssen <sjanssen@cse.unl.edu>, Henning Thielemann <storablevector@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Storable_Vector";
      url = "";
      synopsis = "Fast, packed, strict storable arrays with a list interface like ByteString";
      description = "Fast, packed, strict storable arrays\nwith a list interface,\na chunky lazy list interface with variable chunk size\nand an interface for write access via the @ST@ monad.\nThis is much like @bytestring@ and @binary@\nbut can be used for every 'Foreign.Storable.Storable' type.\nSee also package\n<http://hackage.haskell.org/package/vector>\nwith a similar intention.\n\nWe do not provide advanced fusion optimization,\nsince especially for lazy vectors\nthis would either be incorrect or not applicable.\nHowever we provide fusion with lazy lists in the package\n<http://hackage.haskell.org/package/storablevector-streamfusion>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unsafe" or (errorHandler.buildDepError "unsafe"))
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
      tests = {
        "test" = {
          depends = [
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
          };
        };
      benchmarks = {
        "speedtest" = {
          depends = [
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."sample-frame" or (errorHandler.buildDepError "sample-frame"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "speedpointer" = {
          depends = [
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }