{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "handa-gdata";
        version = "0.6.0";
      };
      license = "MIT";
      copyright = "(c) 2012-13 Brian W Bush";
      maintainer = "Brian W Bush <b.w.bush@acm.org>";
      author = "Brian W Bush <b.w.bush@acm.org>";
      homepage = "http://code.google.com/p/hgdata";
      url = "http://code.google.com/p/hgdata/downloads/list";
      synopsis = "Library and command-line utility for accessing Google services and APIs.";
      description = "This project provides a Haskell library and command-line interface for Google services such as Google Storage, Contacts, Books, etc.\n\nFor OAuth 2.0, the following operations are supported:\n\n* Forming a URL for authorizing one or more Google APIs\n\n* Exchanging an authorization code for tokens\n\n* Refreshing tokens\n\n* Validating tokens\n\n\nFor the Google Storage API, the following operations are supported:\n\n* GET Service\n\n* PUT Bucket\n\n* GET Bucket\n\n* DELETE Bucket\n\n* GET Object\n\n* PUT Object\n\n* HEAD Object\n\n* DELETE Object\n\nOperations in the Google Fusion Tables API are also supported.\n\nFor the unofficial Google Bookmarks API, the following operations are supported:\n\n* List bookmarks\n\nFor the Google Books API, the following operations are supported:\n\n* List bookshelves\n\n* List books\n\nFor the Google Contacts API, the following operations are supported:\n\n* Downloading a full list of contacts in XML format\n\n* Extracting and decrypting GnuPG/PGP text in contacts' Notes fields\n\nFor the Picasa API, the following operations are supported:\n\n* Listing albums\n\n* Listing photos in an album";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HTTP)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cmdargs)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.split)
          (hsPkgs.http-conduit)
          (hsPkgs.json)
          (hsPkgs.old-locale)
          (hsPkgs.process)
          (hsPkgs.pureMD5)
          (hsPkgs.regex-posix)
          (hsPkgs.resourcet)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          (hsPkgs.xml)
          (hsPkgs.random)
          (hsPkgs.pretty)
          (hsPkgs.GenericPretty)
        ];
      };
      exes = {
        "hgdata" = {
          depends = [
            (hsPkgs.HTTP)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.split)
            (hsPkgs.http-conduit)
            (hsPkgs.json)
            (hsPkgs.old-locale)
            (hsPkgs.process)
            (hsPkgs.pureMD5)
            (hsPkgs.regex-posix)
            (hsPkgs.resourcet)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.xml)
            (hsPkgs.random)
            (hsPkgs.pretty)
            (hsPkgs.GenericPretty)
          ];
        };
      };
    };
  }