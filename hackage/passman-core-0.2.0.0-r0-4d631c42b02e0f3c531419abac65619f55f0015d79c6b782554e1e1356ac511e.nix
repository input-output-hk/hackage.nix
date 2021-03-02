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
      specVersion = "2.0";
      identifier = { name = "passman-core"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2017 Matthew Harm Bekkema";
      maintainer = "mbekkema97@gmail.com";
      author = "Matthew Harm Bekkema";
      homepage = "https://github.com/PasswordManager/passman-core#readme";
      url = "";
      synopsis = "Deterministic password generator core";
      description = "Generates unique passwords deterministically from a single master password.\nA hash of the master password is stored on disk to prevent accidentally\ngenerating a password from a mistyped master password.\n\nThis is the core of passman.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."passman-core".components.sublibs.passman-core-internal or (errorHandler.buildDepError "passman-core:passman-core-internal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bcrypt" or (errorHandler.buildDepError "bcrypt"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash-md5" or (errorHandler.buildDepError "cryptohash-md5"))
          (hsPkgs."csv-conduit" or (errorHandler.buildDepError "csv-conduit"))
          (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."int-cast" or (errorHandler.buildDepError "int-cast"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      sublibs = {
        "passman-core-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."int-cast" or (errorHandler.buildDepError "int-cast"))
            ];
          buildable = true;
          };
        };
      tests = {
        "precomputed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."passman-core" or (errorHandler.buildDepError "passman-core"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."passman-core" or (errorHandler.buildDepError "passman-core"))
            (hsPkgs."passman-core".components.sublibs.passman-core-internal or (errorHandler.buildDepError "passman-core:passman-core-internal"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-unicode" or (errorHandler.buildDepError "quickcheck-unicode"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      };
    }