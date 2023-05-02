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
      specVersion = "3.0";
      identifier = { name = "hash-addressed"; version = "0.2.0.1"; };
      license = "Apache-2.0";
      copyright = "2023 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/hash-addressed";
      url = "";
      synopsis = "Hash-addressed file storage";
      description = "A simple system for maintaining a directory wherein each file's\nname is a hash of its content.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."gambler" or (errorHandler.buildDepError "gambler"))
          (hsPkgs."quaalude" or (errorHandler.buildDepError "quaalude"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
        buildable = true;
        };
      };
    }