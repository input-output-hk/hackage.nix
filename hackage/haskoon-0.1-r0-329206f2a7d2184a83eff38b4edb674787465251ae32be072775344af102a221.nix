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
      identifier = { name = "haskoon"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "David Leuschner <leuschner@openfactis.org>";
      author = "David Leuschner, Dirk Spöri";
      homepage = "";
      url = "";
      synopsis = "Web Application Abstraction";
      description = "Web Astraction Layer with a binding to CGI providing a simple way to\nmap parameter and header values to data structures (inspired by HAppS)\nand a sitemap functionality to map URLs to functions that answer the request.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."MaybeT" or (errorHandler.buildDepError "MaybeT"))
          (hsPkgs."fastcgi" or (errorHandler.buildDepError "fastcgi"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
          (hsPkgs."hsx" or (errorHandler.buildDepError "hsx"))
          ];
        buildable = true;
        };
      };
    }