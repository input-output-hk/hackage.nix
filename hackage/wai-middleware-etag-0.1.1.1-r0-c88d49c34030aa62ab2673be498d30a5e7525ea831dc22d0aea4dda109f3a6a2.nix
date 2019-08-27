let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."http-date" or (buildDepError "http-date"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."wai" or (buildDepError "wai"))
          ];
        };
      };
    }