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
    flags = { test = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "incremental-parser"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2011 Mario Blazevic";
      maintainer = "blamario@yahoo.com";
      author = "Mario Blazevic";
      homepage = "http://patch-tag.com/r/blamario/incremental-parser/wiki/";
      url = "";
      synopsis = "Generic parser library capable of providing partial results from partial input.";
      description = "This package defines yet another parser library. This one is implemented using the concept of Brzozowski derivatives,\ntweaked and optimized to work with any monoidal input type. Lists, ByteString, and Text are supported out of the box.\nIf the parser result is also a monoid, the parser can provide it incrementally, before the complete input is parsed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "test-incremental-parser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = if !flags.test then false else true;
          };
        };
      };
    }