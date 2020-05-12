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
      identifier = { name = "cas-hashable-s3"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "yves.pares@tweag.io";
      author = "Tom Nielsen, Nicholas Clarke, Andreas Herrmann";
      homepage = "https://github.com/tweag/funflow";
      url = "";
      synopsis = "ContentHashable instances for S3 objects";
      description = "Provides ContentHashable instances for S3 objects";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
          (hsPkgs."cas-hashable" or (errorHandler.buildDepError "cas-hashable"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
        buildable = true;
        };
      };
    }