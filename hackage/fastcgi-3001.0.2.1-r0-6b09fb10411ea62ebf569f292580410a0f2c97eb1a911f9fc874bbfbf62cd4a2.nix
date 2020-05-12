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
      identifier = { name = "fastcgi"; version = "3001.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Lemmih";
      maintainer = "bjorn@bringert.net";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A Haskell library for writing FastCGI programs";
      description = "This library lets you write FastCGI programs. This package reuses the\ncgi package API, making it very easy to port CGI programs to FastCGI.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        libs = [ (pkgs."fcgi" or (errorHandler.sysDepError "fcgi")) ];
        buildable = true;
        };
      };
    }