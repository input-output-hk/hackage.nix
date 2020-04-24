{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "wai-middleware-etag"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andreas Meingast <ameingast@gmail.com>";
      author = "Andreas Meingast <ameingast@gmail.com>";
      homepage = "https://github.com/ameingast/wai-middleware-etag";
      url = "";
      synopsis = "WAI ETag middleware for static files";
      description = "WAI middleware that attaches ETags to responses for static files\nif they exist.\n\nCaveats:\n\nIf caching is turned on, the middleware caches calculated checksums\naggressively in a synchronized hashmap; checksums are calculated only\nonce, so changes on the file-system are not reflected until the server\nis restarted.\n\nThis middleware only calculates ETag checksums for file smaller than 1MB,\notherwise it attaches a last-modified tag to the response.\n\n[WAI] <http://hackage.haskell.org/package/wai>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."http-date" or ((hsPkgs.pkgs-errors).buildDepError "http-date"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          ];
        buildable = true;
        };
      };
    }