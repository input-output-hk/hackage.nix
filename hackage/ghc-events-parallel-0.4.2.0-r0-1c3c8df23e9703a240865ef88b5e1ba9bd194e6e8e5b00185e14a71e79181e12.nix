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
      identifier = { name = "ghc-events-parallel"; version = "0.4.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eden group <eden@mathematik.uni-marburg.de>";
      author = "Donnie Jones <donnie@darthik.com>,\nSimon Marlow <marlowsd@gmail.com>,\nPaul Bone <pbone@csse.unimelb.edu.au>,\nMischa Dieterle <dieterle@mathematik.uni-marburg.de>,\nThomas Horstmeyer <horstmey@mathematik.uni-marburg.de>,\nDuncan Coutts <duncan@well-typed.com>,\nNicolas Wu <nick@well-typed.com>,\nJost Berthold <berthold@diku.dk>\nMikolaj Konarski <mikolaj@well-typed.com>";
      homepage = "";
      url = "";
      synopsis = "Library and tool for parsing .eventlog files from parallel GHC";
      description = "Parses .eventlog files emitted by parallel GHC versions\n(6.12.3 and later). This package can replace the original\nghc-events package and defines a superset of functions\nand types.\nIncludes the ghc-events tool permitting, in particular,\nto dump an event log file as text.";
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