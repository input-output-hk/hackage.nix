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
    flags = { libev = false; portable = false; gnutls = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "snap-server"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "James Sanders, Gregory Collins, Doug Beardsley";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "A fast, iteratee-based, epoll-enabled web server for the Snap Framework";
      description = "Snap is a simple and fast web development framework and server written in\nHaskell. For more information or to download the latest version, you can\nvisit the Snap project website at <http://snapframework.com/>.\n\nThe Snap HTTP server is a high performance, epoll-enabled, iteratee-based web\nserver library written in Haskell. Together with the @snap-core@ library upon\nwhich it depends, it provides a clean and efficient Haskell programming\ninterface to the HTTP protocol.\n\nHigher-level facilities for building web applications (like user/session\nmanagement, component interfaces, data modeling, etc.) are planned but not\nyet implemented, so this release will mostly be of interest for those who:\n\n* need a fast and minimal HTTP API at roughly the same level of abstraction\nas Java servlets, or\n\n* are interested in contributing to the Snap Framework project.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."attoparsec-enumerator" or (buildDepError "attoparsec-enumerator"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."blaze-builder-enumerator" or (buildDepError "blaze-builder-enumerator"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-nums" or (buildDepError "bytestring-nums"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory-tree" or (buildDepError "directory-tree"))
          (hsPkgs."enumerator" or (buildDepError "enumerator"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."MonadCatchIO-transformers" or (buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."murmur-hash" or (buildDepError "murmur-hash"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."snap-core" or (buildDepError "snap-core"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
          (hsPkgs."PSQueue" or (buildDepError "PSQueue"))
          ] ++ (pkgs.lib).optional (!(flags.portable || system.isWindows)) (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optional (flags.libev) (hsPkgs."hlibev" or (buildDepError "hlibev"));
        libs = (pkgs.lib).optionals (flags.gnutls) [
          (pkgs."gnutls" or (sysDepError "gnutls"))
          (pkgs."gcrypt" or (sysDepError "gcrypt"))
          ];
        };
      };
    }