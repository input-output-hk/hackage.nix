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
      identifier = { name = "ghc-events"; version = "0.4.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Donnie Jones <donnie@darthik.com>,\nSimon Marlow <marlowsd@gmail.com>,\nPaul Bone <pbone@csse.unimelb.edu.au>,\nDuncan Coutts <duncan@well-typed.com>,\nNicolas Wu <nick@well-typed.com>,\nMikolaj Konarski <mikolaj@well-typed.com>";
      homepage = "";
      url = "";
      synopsis = "Library and tool for parsing .eventlog files from GHC";
      description = "Parses .eventlog files emitted by GHC 6.12.1 and later.\nIncludes the ghc-events tool permitting, in particular,\nto dump an event log file as text.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      exes = {
        "ghc-events" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-versions" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }