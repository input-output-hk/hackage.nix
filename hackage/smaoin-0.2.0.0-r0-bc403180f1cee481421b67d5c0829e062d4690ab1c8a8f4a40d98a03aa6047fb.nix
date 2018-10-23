{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "smaoin";
        version = "0.2.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/smaoin-hs/";
      url = "";
      synopsis = "Utilities for the Smaoin semantic information model.";
      description = "This package provides basic types and functions for\nworking with the Smaoin model in Haskell. But these are\njust fundamentals. Storing, loading, querying and\napplication level functions are/will be provided in other\npackages.\n\nMore info about the Smaoin model:\n\n<http://rel4tion.org/projects/smaoin/>";
      buildType = "Simple";
    };
    components = {
      "smaoin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.uuid)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.smaoin)
          ];
        };
      };
    };
  }