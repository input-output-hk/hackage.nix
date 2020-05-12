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
      identifier = { name = "tar-conduit"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com, bartavelle@gmail.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/tar-conduit#readme";
      url = "";
      synopsis = "Parse tar files using conduit for streaming";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
          ];
        buildable = true;
        };
      };
    }