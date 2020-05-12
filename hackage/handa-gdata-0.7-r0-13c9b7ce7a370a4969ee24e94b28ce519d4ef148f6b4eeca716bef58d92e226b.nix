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
      specVersion = "1.6";
      identifier = { name = "handa-gdata"; version = "0.7"; };
      license = "MIT";
      copyright = "(c) 2012-13 Brian W Bush, Ryan Newton";
      maintainer = "Brian W Bush <b.w.bush@acm.org>, Ryan Newton <rrnewton@indiana.edu>";
      author = "Brian W Bush <b.w.bush@acm.org>, Ryan Newton <rrnewton@indiana.edu>";
      homepage = "http://code.google.com/p/hgdata";
      url = "http://code.google.com/p/hgdata/downloads/list";
      synopsis = "Library and command-line utility for accessing Google services and APIs.";
      description = "This project provides a Haskell library and command-line interface for Google services such as Google Storage, Contacts, Books, etc.\n\nFor OAuth 2.0, the following operations are supported:\n\n* Forming a URL for authorizing one or more Google APIs\n\n* Exchanging an authorization code for tokens\n\n* Refreshing tokens\n\n* Validating tokens\n\n\nFor the Google Storage API, the following operations are supported:\n\n* GET Service\n\n* PUT Bucket\n\n* GET Bucket\n\n* DELETE Bucket\n\n* GET Object\n\n* PUT Object\n\n* HEAD Object\n\n* DELETE Object\n\nOperations in the Google Fusion Tables API are also supported.\n\nFor the unofficial Google Bookmarks API, the following operations are supported:\n\n* List bookmarks\n\nFor the Google Books API, the following operations are supported:\n\n* List bookshelves\n\n* List books\n\nFor the Google Contacts API, the following operations are supported:\n\n* Downloading a full list of contacts in XML format\n\n* Extracting and decrypting GnuPG/PGP text in contacts' Notes fields\n\nFor the Picasa API, the following operations are supported:\n\n* Listing albums\n\n* Listing photos in an album";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
        buildable = true;
        };
      exes = {
        "hgdata" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            ];
          buildable = true;
          };
        };
      };
    }