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
      identifier = { name = "libravatar"; version = "0.1.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/libravatar/";
      url = "";
      synopsis = "Use Libravatar, the decentralized avatar delivery service";
      description = "This package is a Haskell library for\n<http://libravatar.org Libravatar>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."url" or (errorHandler.buildDepError "url"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }