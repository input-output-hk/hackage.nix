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
      specVersion = "0";
      identifier = { name = "happstack-fastcgi"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Tupil";
      maintainer = "ce [at] tupil.com, eml [at] tupil.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Happstack extension for use with FastCGI.";
      description = "This library lets you write FastCGI programs with Happstack. This package\nreuses the SimpleHTTP API, making it very easy to port stand-alone HTTP\nprograms to FastCGI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."fastcgi" or (errorHandler.buildDepError "fastcgi"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }