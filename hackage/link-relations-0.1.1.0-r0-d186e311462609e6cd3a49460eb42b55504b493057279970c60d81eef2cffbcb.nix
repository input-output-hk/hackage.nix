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
      identifier = { name = "link-relations"; version = "0.1.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://hub.darcs.net/fr33domlover/link-relations";
      url = "";
      synopsis = "Use web link relation types (RFC 5988) in Haskell";
      description = "This library provides access to the IANA registry of link relation types, for\nuse in Haskell code in a type-safe manner.\n\nThe registry data can be found at\n<https://www.iana.org/assignments/link-relations>. This package is generated\nfrom that data.\n\nTo see to which revision of the registry this version of the package\ncorresponds, look at the intro comment in \"Web.LinkRelations\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
        ];
        buildable = true;
      };
    };
  }