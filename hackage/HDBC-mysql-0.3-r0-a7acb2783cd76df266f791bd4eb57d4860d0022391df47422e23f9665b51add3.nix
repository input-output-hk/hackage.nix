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
      specVersion = "1.0";
      identifier = { name = "HDBC-mysql"; version = "0.3"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2009 Chris Waterson";
      maintainer = "Chris Waterson <waterson@maubi.net>";
      author = "Chris Waterson";
      homepage = "http://www.maubi.net/~waterson/hacks/hdbc-mysql.html";
      url = "";
      synopsis = "MySQL driver for HDBC";
      description = "This package provides a MySQL driver for HDBC.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
        ];
        buildable = true;
      };
    };
  }