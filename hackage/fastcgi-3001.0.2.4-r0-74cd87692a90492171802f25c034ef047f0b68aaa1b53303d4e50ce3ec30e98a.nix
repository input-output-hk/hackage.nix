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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2.0";
      identifier = { name = "fastcgi"; version = "3001.0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Lemmih";
      maintainer = "none";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A Haskell library for writing FastCGI programs";
      description = "This library lets you write FastCGI programs. This package reuses the\ncgi package API, making it very easy to port CGI programs to FastCGI.\nThe FastCGI C development kit is required to build this library.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."fcgi" or (errorHandler.sysDepError "fcgi")) ];
        buildable = true;
        };
      };
    }