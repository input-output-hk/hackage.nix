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
      specVersion = "1.10";
      identifier = { name = "bdcs-api"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "bcl@redhat.com";
      author = "Brian C. Lane";
      homepage = "https://github.com/weldr/bdcs-api";
      url = "";
      synopsis = "BDCS API Server";
      description = "This module provides an API server and library component that works with the BDCS\nproject.  It provides a web interface for clients to create, edit, and delete\nblueprints; to list the contents of the content store; to request composes from\nexisting blueprints; and to fetch the results of composes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bdcs" or (buildDepError "bdcs"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."concurrent-extra" or (buildDepError "concurrent-extra"))
          (hsPkgs."cond" or (buildDepError "cond"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."gi-gio" or (buildDepError "gi-gio"))
          (hsPkgs."gi-ggit" or (buildDepError "gi-ggit"))
          (hsPkgs."gi-glib" or (buildDepError "gi-glib"))
          (hsPkgs."gitrev" or (buildDepError "gitrev"))
          (hsPkgs."haskell-gi-base" or (buildDepError "haskell-gi-base"))
          (hsPkgs."htoml" or (buildDepError "htoml"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."semver" or (buildDepError "semver"))
          (hsPkgs."servant-options" or (buildDepError "servant-options"))
          (hsPkgs."servant-server" or (buildDepError "servant-server"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-cors" or (buildDepError "wai-cors"))
          (hsPkgs."warp" or (buildDepError "warp"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libgit2-glib-1.0" or (pkgConfDepError "libgit2-glib-1.0"))
          ];
        };
      exes = {
        "bdcs-api-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bdcs-api" or (buildDepError "bdcs-api"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bdcs" or (buildDepError "bdcs"))
            (hsPkgs."bdcs-api" or (buildDepError "bdcs-api"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cond" or (buildDepError "cond"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."string-qq" or (buildDepError "string-qq"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          };
        };
      };
    }