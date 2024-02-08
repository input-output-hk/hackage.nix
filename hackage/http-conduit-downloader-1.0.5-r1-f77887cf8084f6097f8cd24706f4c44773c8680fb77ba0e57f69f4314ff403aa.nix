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
      identifier = { name = "http-conduit-downloader"; version = "1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Vladimir Shabanov 2013";
      maintainer = "Vladimir Shabanov <vshabanoff@gmail.com>";
      author = "Vladimir Shabanov <vshabanoff@gmail.com>";
      homepage = "https://github.com/bazqux/http-conduit-downloader";
      url = "";
      synopsis = "HTTP downloader tailored for web-crawler needs.";
      description = "HTTP/HTTPS downloader built on top of @http-conduit@\nand used in <http://bazqux.com> crawler.\n\n* Handles all possible http-conduit exceptions and returns\nhuman readable error messages.\n\n* Handles some web server bugs (no persistent connections on HTTP/1.1,\nreturning 'deflate' data instead of 'gzip')\n\n* Ignores invalid SSL sertificates.\n\n* Receives data in 32k blocks internally to reduce memory fragmentation\non many parallel downloads.\n\n* Download timeout.\n\n* Total download size limit.\n\n* Returns HTTP headers for subsequent redownloads and handles\n'Not modified' results.\n\n* Can be used with external DNS resolver (hsdns-cache for example).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }