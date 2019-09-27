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
      identifier = { name = "concrete-haskell"; version = "0.1.0.16"; };
      license = "LicenseRef-GPL";
      copyright = "2017";
      maintainer = "tom@cs.jhu.edu";
      author = "Thomas Lippincott";
      homepage = "https://github.com/hltcoe";
      url = "";
      synopsis = "Library for the Concrete data format.";
      description = "Concrete is a Thrift-based data specification designed for Natural Language Processing (NLP) applications.  This library provides a Haskell interface to code generated from the latest release of Concrete (the concrete-haskell-autogen package). It also has an ingest utility for converting various formats (JSON, CSV, XML, etc) to Concrete Communication objects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bzlib" or (buildDepError "bzlib"))
          (hsPkgs."bzlib-conduit" or (buildDepError "bzlib-conduit"))
          (hsPkgs."concrete-haskell-autogen" or (buildDepError "concrete-haskell-autogen"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptohash-conduit" or (buildDepError "cryptohash-conduit"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."monad-extras" or (buildDepError "monad-extras"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
          (hsPkgs."path" or (buildDepError "path"))
          (hsPkgs."path-io" or (buildDepError "path-io"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."tar-conduit" or (buildDepError "tar-conduit"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."thrift" or (buildDepError "thrift"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."zip" or (buildDepError "zip"))
          (hsPkgs."zip-conduit" or (buildDepError "zip-conduit"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          ];
        buildable = true;
        };
      exes = {
        "apply_annotators" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bzlib" or (buildDepError "bzlib"))
            (hsPkgs."bzlib-conduit" or (buildDepError "bzlib-conduit"))
            (hsPkgs."concrete-haskell" or (buildDepError "concrete-haskell"))
            (hsPkgs."concrete-haskell-autogen" or (buildDepError "concrete-haskell-autogen"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash-conduit" or (buildDepError "cryptohash-conduit"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."monad-extras" or (buildDepError "monad-extras"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."tar-conduit" or (buildDepError "tar-conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."thrift" or (buildDepError "thrift"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."zip" or (buildDepError "zip"))
            (hsPkgs."zip-conduit" or (buildDepError "zip-conduit"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          buildable = true;
          };
        "build_graphs" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bzlib" or (buildDepError "bzlib"))
            (hsPkgs."bzlib-conduit" or (buildDepError "bzlib-conduit"))
            (hsPkgs."concrete-haskell" or (buildDepError "concrete-haskell"))
            (hsPkgs."concrete-haskell-autogen" or (buildDepError "concrete-haskell-autogen"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash-conduit" or (buildDepError "cryptohash-conduit"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."monad-extras" or (buildDepError "monad-extras"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."tar-conduit" or (buildDepError "tar-conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."thrift" or (buildDepError "thrift"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."zip" or (buildDepError "zip"))
            (hsPkgs."zip-conduit" or (buildDepError "zip-conduit"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          buildable = true;
          };
        "fetch_service" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bzlib" or (buildDepError "bzlib"))
            (hsPkgs."bzlib-conduit" or (buildDepError "bzlib-conduit"))
            (hsPkgs."concrete-haskell" or (buildDepError "concrete-haskell"))
            (hsPkgs."concrete-haskell-autogen" or (buildDepError "concrete-haskell-autogen"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash-conduit" or (buildDepError "cryptohash-conduit"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."monad-extras" or (buildDepError "monad-extras"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."tar-conduit" or (buildDepError "tar-conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."thrift" or (buildDepError "thrift"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."zip" or (buildDepError "zip"))
            (hsPkgs."zip-conduit" or (buildDepError "zip-conduit"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          buildable = true;
          };
        "ingest_communications" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bzlib" or (buildDepError "bzlib"))
            (hsPkgs."bzlib-conduit" or (buildDepError "bzlib-conduit"))
            (hsPkgs."concrete-haskell" or (buildDepError "concrete-haskell"))
            (hsPkgs."concrete-haskell-autogen" or (buildDepError "concrete-haskell-autogen"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash-conduit" or (buildDepError "cryptohash-conduit"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."monad-extras" or (buildDepError "monad-extras"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."tar-conduit" or (buildDepError "tar-conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."thrift" or (buildDepError "thrift"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."zip" or (buildDepError "zip"))
            (hsPkgs."zip-conduit" or (buildDepError "zip-conduit"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          buildable = true;
          };
        "inspect_communications" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bzlib" or (buildDepError "bzlib"))
            (hsPkgs."bzlib-conduit" or (buildDepError "bzlib-conduit"))
            (hsPkgs."concrete-haskell" or (buildDepError "concrete-haskell"))
            (hsPkgs."concrete-haskell-autogen" or (buildDepError "concrete-haskell-autogen"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash-conduit" or (buildDepError "cryptohash-conduit"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."monad-extras" or (buildDepError "monad-extras"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."tar-conduit" or (buildDepError "tar-conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."thrift" or (buildDepError "thrift"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."zip" or (buildDepError "zip"))
            (hsPkgs."zip-conduit" or (buildDepError "zip-conduit"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          buildable = true;
          };
        "store_service" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bzlib" or (buildDepError "bzlib"))
            (hsPkgs."bzlib-conduit" or (buildDepError "bzlib-conduit"))
            (hsPkgs."concrete-haskell" or (buildDepError "concrete-haskell"))
            (hsPkgs."concrete-haskell-autogen" or (buildDepError "concrete-haskell-autogen"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash-conduit" or (buildDepError "cryptohash-conduit"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."monad-extras" or (buildDepError "monad-extras"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."tar-conduit" or (buildDepError "tar-conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."thrift" or (buildDepError "thrift"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."zip" or (buildDepError "zip"))
            (hsPkgs."zip-conduit" or (buildDepError "zip-conduit"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          buildable = true;
          };
        };
      tests = {
        "ingesters" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bzlib" or (buildDepError "bzlib"))
            (hsPkgs."bzlib-conduit" or (buildDepError "bzlib-conduit"))
            (hsPkgs."concrete-haskell" or (buildDepError "concrete-haskell"))
            (hsPkgs."concrete-haskell-autogen" or (buildDepError "concrete-haskell-autogen"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash-conduit" or (buildDepError "cryptohash-conduit"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."monad-extras" or (buildDepError "monad-extras"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."tar-conduit" or (buildDepError "tar-conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."thrift" or (buildDepError "thrift"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."zip" or (buildDepError "zip"))
            (hsPkgs."zip-conduit" or (buildDepError "zip-conduit"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          buildable = true;
          };
        "serialization" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bzlib" or (buildDepError "bzlib"))
            (hsPkgs."bzlib-conduit" or (buildDepError "bzlib-conduit"))
            (hsPkgs."concrete-haskell" or (buildDepError "concrete-haskell"))
            (hsPkgs."concrete-haskell-autogen" or (buildDepError "concrete-haskell-autogen"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash-conduit" or (buildDepError "cryptohash-conduit"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."monad-extras" or (buildDepError "monad-extras"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."tar-conduit" or (buildDepError "tar-conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."thrift" or (buildDepError "thrift"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."zip" or (buildDepError "zip"))
            (hsPkgs."zip-conduit" or (buildDepError "zip-conduit"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          buildable = true;
          };
        };
      };
    }