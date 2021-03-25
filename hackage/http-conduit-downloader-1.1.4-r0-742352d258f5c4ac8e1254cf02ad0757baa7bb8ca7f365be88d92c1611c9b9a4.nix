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
      specVersion = "2.4";
      identifier = { name = "http-conduit-downloader"; version = "1.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vladimir Shabanov <dev@vshabanov.com>";
      author = "Vladimir Shabanov <dev@vshabanov.com>";
      homepage = "https://github.com/bazqux/http-conduit-downloader";
      url = "";
      synopsis = "HTTP downloader tailored for web-crawler needs.";
      description = "HTTP/HTTPS downloader built on top of @http-client@\nand used in <https://bazqux.com> crawler.\n\nPreviously it was based on @http-conduit@ (hence the name) but since\nall the necessary parts are in @http-client@ now @http-conduit@ is no\nlonger used.\n\n* Handles all possible http-client exceptions and returns\nhuman readable error messages.\n\n* Handles some web server bugs (returning 'deflate' data instead of 'gzip',\ninvalid 'gzip' encoding).\n\n* Uses OpenSSL instead of 'tls' package (since 'tls' doesn't handle all sites and works slower than OpenSSL).\n\n* Ignores invalid SSL sertificates.\n\n* Receives data in 32k chunks internally to reduce memory fragmentation\non many parallel downloads.\n\n* Download timeout.\n\n* Total download size limit.\n\n* Returns HTTP headers for subsequent redownloads and handles\n'Not modified' results.\n\n* Can be used with external DNS resolver (e.g. @concurrent-dns-cache@).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-openssl" or (errorHandler.buildDepError "http-client-openssl"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }