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
    flags = { s3upload-exe = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-s3-streaming"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2023 Alex Mason, Copyright © 2016 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
      maintainer = "amazonka-s3-streaming@me.axman6.com";
      author = "Alex Mason";
      homepage = "https://github.com/Axman6/amazonka-s3-streaming#readme";
      url = "";
      synopsis = "Provides conduits to upload data to S3 using the Multipart API";
      description = "Provides a conduit based streaming interface and a concurrent interface to\nuploading data to S3 using the Multipart API. Also provides method to upload\nfiles or bytestrings of known size in parallel. Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-s3" or (errorHandler.buildDepError "amazonka-s3"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
        buildable = true;
        };
      exes = {
        "s3upload" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."amazonka-s3" or (errorHandler.buildDepError "amazonka-s3"))
            (hsPkgs."amazonka-s3-streaming" or (errorHandler.buildDepError "amazonka-s3-streaming"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            ];
          buildable = if flags.s3upload-exe then true else false;
          };
        };
      };
    }