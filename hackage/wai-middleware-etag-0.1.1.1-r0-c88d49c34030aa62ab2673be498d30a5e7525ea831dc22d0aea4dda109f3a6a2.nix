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
      specVersion = "1.8";
      identifier = { name = "wai-middleware-etag"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andreas Meingast <ameingast@gmail.com>";
      author = "Andreas Meingast <ameingast@gmail.com>";
      homepage = "https://github.com/ameingast/wai-middleware-etag";
      url = "";
      synopsis = "WAI ETag middleware for static files";
      description = "WAI middleware that attaches ETags to responses for static files.\n\nCaveats:\n\nIf caching is turned on, the middleware caches calculated checksums\naggressively in a synchronized hashmap; checksums are calculated only\nonce, so changes on the file-system are not reflected until the server\nis restarted.\n\nThis middleware only calculates ETag checksums for file smaller than 1MB,\notherwise it attaches a last-modified tag to the response.\n\nThe package is heavily influenced by wai-app-static.\n\n[WAI] <http://hackage.haskell.org/package/wai>\n\n[wai-app-static] <http://hackage.haskell.org/package/wai-app-static>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-date" or (errorHandler.buildDepError "http-date"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
    };
  }