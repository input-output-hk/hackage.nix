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
      identifier = { name = "protocol-buffers-descriptor"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Christopher Edward Kuklewicz";
      maintainer = "Chris Kuklewicz <protobuf@personal.mightyreason.com>";
      author = "Christopher Edward Kuklewicz";
      homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/protocol-buffers";
      url = "http://darcs.haskell.org/packages/protocol-buffers2/";
      synopsis = "Self-description of Google Protocol Buffer specifications";
      description = "Uses protocol-buffers package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."protocol-buffers" or (errorHandler.buildDepError "protocol-buffers"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }