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
      specVersion = "1.6";
      identifier = { name = "process-extras"; version = "0.4.1.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Lazar, Bas van Dijk, David Fox";
      homepage = "https://github.com/seereason/process-extras";
      url = "";
      synopsis = "Process extras";
      description = "Extends <http://hackage.haskell.org/package/process>.\nRead process input and output as ByteStrings or\nText, or write your own ProcessOutput instance.\nLazy process input and output.  ProcessMaker class\nfor more flexibility in the process creation API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
        ];
        buildable = true;
      };
    };
  }