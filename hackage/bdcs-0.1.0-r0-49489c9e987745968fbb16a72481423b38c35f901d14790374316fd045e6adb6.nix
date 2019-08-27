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
    flags = { scripts = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bdcs"; version = "0.1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "clumens@redhat.com";
      author = "Chris Lumens";
      homepage = "https://github.com/weldr/bdcs";
      url = "";
      synopsis = "Tools for managing a content store of software packages";
      description = "This module provides a library and various tools for managing a content store and\nmetadata database.  These store the contents of software packages that make up a\nLinux distribution as well as a lot of metadata about those software packages.\nTools are inclued to construct those stores from pre-built software and to pull\nfiles back out to turn into bootable images.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."codec-rpm" or (buildDepError "codec-rpm"))
          (hsPkgs."cond" or (buildDepError "cond"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."content-store" or (buildDepError "content-store"))
          (hsPkgs."cpio-conduit" or (buildDepError "cpio-conduit"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."gi-gio" or (buildDepError "gi-gio"))
          (hsPkgs."gi-glib" or (buildDepError "gi-glib"))
          (hsPkgs."gi-ostree" or (buildDepError "gi-ostree"))
          (hsPkgs."gitrev" or (buildDepError "gitrev"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."parsec-numbers" or (buildDepError "parsec-numbers"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
          (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."tar-conduit" or (buildDepError "tar-conduit"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
          ];
        pkgconfig = [
          (pkgconfPkgs."ostree-1" or (pkgConfDepError "ostree-1"))
          ];
        };
      exes = {
        "bdcs" = {
          depends = [
            (hsPkgs."bdcs" or (buildDepError "bdcs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cond" or (buildDepError "cond"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "bdcs-import" = {
          depends = [
            (hsPkgs."bdcs" or (buildDepError "bdcs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cond" or (buildDepError "cond"))
            (hsPkgs."content-store" or (buildDepError "content-store"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "bdcs-inspect" = {
          depends = [
            (hsPkgs."bdcs" or (buildDepError "bdcs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cond" or (buildDepError "cond"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "inspect-groups" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bdcs" or (buildDepError "bdcs"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cond" or (buildDepError "cond"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "inspect-ls" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bdcs" or (buildDepError "bdcs"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cond" or (buildDepError "cond"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        "inspect-nevras" = {
          depends = [
            (hsPkgs."bdcs" or (buildDepError "bdcs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cond" or (buildDepError "cond"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "bdcs-export" = {
          depends = [
            (hsPkgs."bdcs" or (buildDepError "bdcs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cond" or (buildDepError "cond"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."content-store" or (buildDepError "content-store"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "bdcs-tmpfiles" = {
          depends = [
            (hsPkgs."bdcs" or (buildDepError "bdcs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "bdcs-depsolve" = {
          depends = [
            (hsPkgs."bdcs" or (buildDepError "bdcs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "test-bdcs" = {
          depends = [
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."codec-rpm" or (buildDepError "codec-rpm"))
            (hsPkgs."cond" or (buildDepError "cond"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."gi-gio" or (buildDepError "gi-gio"))
            (hsPkgs."gi-glib" or (buildDepError "gi-glib"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."parsec-numbers" or (buildDepError "parsec-numbers"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          };
        };
      };
    }