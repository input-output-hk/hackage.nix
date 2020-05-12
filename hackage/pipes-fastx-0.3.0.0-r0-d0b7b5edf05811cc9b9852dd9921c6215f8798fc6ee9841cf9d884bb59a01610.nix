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
      identifier = { name = "pipes-fastx"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014-2015";
      maintainer = "ropoctl@gmail.com";
      author = "Rob O'Callahan";
      homepage = "";
      url = "";
      synopsis = "Streaming parsers for Fasta and Fastq";
      description = "Streaming parsers for Fasta and Fastq";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."pipes-attoparsec" or (errorHandler.buildDepError "pipes-attoparsec"))
          ];
        buildable = true;
        };
      };
    }