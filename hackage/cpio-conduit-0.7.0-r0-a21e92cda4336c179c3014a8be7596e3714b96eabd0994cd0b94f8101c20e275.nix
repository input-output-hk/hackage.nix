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
      identifier = { name = "cpio-conduit"; version = "0.7.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "alonid@gmail.com";
      author = "Dan Aloni";
      homepage = "http://github.com/da-x/cpio-conduit";
      url = "";
      synopsis = "Conduit-based CPIO";
      description = "This is a native Haskell implementation of the CPIO protocol over the Conduit library. See <http://www.gnu.org/software/cpio/>.\nOnly the commonly used CPIO formats are supported (crc and newc).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      tests = {
        "cpio-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."cpio-conduit" or (errorHandler.buildDepError "cpio-conduit"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            ];
          buildable = true;
          };
        };
      };
    }