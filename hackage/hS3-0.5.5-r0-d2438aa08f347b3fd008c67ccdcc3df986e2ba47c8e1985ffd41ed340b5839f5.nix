{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hS3";
        version = "0.5.5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008, Greg Heartsfield";
      maintainer = "Greg Heartsfield <scsibug@imap.cc>";
      author = "Greg Heartsfield <scsibug@imap.cc>";
      homepage = "http://gregheartsfield.com/hS3/";
      url = "";
      synopsis = "Interface to Amazon's Simple Storage Service (S3)";
      description = "This is the Haskell S3 library.  It provides an\ninterface to Amazon's Simple Storage Service (S3), allowing Haskell\ndevelopers to reliably store and retrieve arbitrary amounts of\ndata from anywhere on the Internet.";
      buildType = "Simple";
    };
    components = {
      "hS3" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.Crypto)
          (hsPkgs.hxt)
          (hsPkgs.network)
          (hsPkgs.regex-compat)
          (hsPkgs.old-time)
          (hsPkgs.random)
          (hsPkgs.old-locale)
          (hsPkgs.dataenc)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.MissingH)
        ];
      };
      exes = { "hs3" = {}; };
    };
  }