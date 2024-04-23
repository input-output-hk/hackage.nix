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
      specVersion = "1.2";
      identifier = { name = "direct-fastcgi"; version = "1.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009 Dan Knapp";
      maintainer = "dankna@gmail.com";
      author = "Dan Knapp";
      homepage = "http://dankna.com/software/";
      url = "";
      synopsis = "Native implementation of the FastCGI protocol.";
      description = "This package is a native implementation of the FastCGI protocol, allowing\nHaskell to work with any webserver that supports it.  It makes no attempt to\nimitate the interface of the cgi-3000 and fastcgi-3000 packages, because\nthat API is tied too heavily to legacy interfaces, as with its handling of\nexceptions, logging, and time.  Its advantage over those packages is\nprimarily in the area of clean exception management and better control\nstructure which allows more versatility in processing requests which are\nnot simple GETs.  In particular, POST of large files should be possible, as\nshould server-push responses which return content a piece at a time.  Also,\nof course, as a native implementation, there is no dependency on a C\nlibrary, which simplifies the install process.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-bytestring" or (errorHandler.buildDepError "network-bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ];
        buildable = true;
      };
    };
  }