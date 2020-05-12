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
      specVersion = "1.10";
      identifier = { name = "pipes-illumina"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014-2015";
      maintainer = "ropoctl@gmail.com";
      author = "Rob O'Callahan";
      homepage = "http://github.com/rcallahan/pipes-illumina";
      url = "";
      synopsis = "Illumina NGS data processing";
      description = "Streaming of Bcl and other Illumina file formats";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-bgzf" or (errorHandler.buildDepError "pipes-bgzf"))
          ];
        buildable = true;
        };
      };
    }