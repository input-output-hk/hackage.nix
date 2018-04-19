{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-middleware-etag";
          version = "0.1.1.1";
        };
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
        wai-middleware-etag = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cryptohash
            hsPkgs.filepath
            hsPkgs.http-date
            hsPkgs.http-types
            hsPkgs.unix-compat
            hsPkgs.unordered-containers
            hsPkgs.wai
          ];
        };
      };
    }