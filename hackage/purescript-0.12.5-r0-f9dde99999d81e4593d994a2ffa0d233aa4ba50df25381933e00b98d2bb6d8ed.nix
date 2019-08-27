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
    flags = { release = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "purescript"; version = "0.12.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-17 Phil Freeman, (c) 2014-17 Gary Burgess";
      maintainer = "Phil Freeman <paf31@cantab.net>";
      author = "Phil Freeman <paf31@cantab.net>, Gary Burgess <gary.burgess@gmail.com>, Hardy Jones <jones3.hardy@gmail.com>, Harry Garrood <harry@garrood.me>, Christoph Hegemann <christoph.hegemann1337@gmail.com>";
      homepage = "http://www.purescript.org/";
      url = "";
      synopsis = "PureScript Programming Language Compiler";
      description = "A small strongly, statically typed programming language with expressive types, inspired by Haskell and compiling to JavaScript.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."Glob" or (buildDepError "Glob"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-better-errors" or (buildDepError "aeson-better-errors"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-compat" or (buildDepError "base-compat"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."bower-json" or (buildDepError "bower-json"))
          (hsPkgs."boxes" or (buildDepError "boxes"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cheapskate" or (buildDepError "cheapskate"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-ordlist" or (buildDepError "data-ordlist"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."language-javascript" or (buildDepError "language-javascript"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pattern-arrows" or (buildDepError "pattern-arrows"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."sourcemap" or (buildDepError "sourcemap"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."stringsearch" or (buildDepError "stringsearch"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "purs" = {
          depends = [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-better-errors" or (buildDepError "aeson-better-errors"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."bower-json" or (buildDepError "bower-json"))
            (hsPkgs."boxes" or (buildDepError "boxes"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cheapskate" or (buildDepError "cheapskate"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-ordlist" or (buildDepError "data-ordlist"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."language-javascript" or (buildDepError "language-javascript"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pattern-arrows" or (buildDepError "pattern-arrows"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."purescript" or (buildDepError "purescript"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."sourcemap" or (buildDepError "sourcemap"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."stringsearch" or (buildDepError "stringsearch"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            ] ++ (pkgs.lib).optional (!flags.release) (hsPkgs."gitrev" or (buildDepError "gitrev"));
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-better-errors" or (buildDepError "aeson-better-errors"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."bower-json" or (buildDepError "bower-json"))
            (hsPkgs."boxes" or (buildDepError "boxes"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cheapskate" or (buildDepError "cheapskate"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-ordlist" or (buildDepError "data-ordlist"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (buildDepError "hspec-discover"))
            (hsPkgs."language-javascript" or (buildDepError "language-javascript"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pattern-arrows" or (buildDepError "pattern-arrows"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."purescript" or (buildDepError "purescript"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."sourcemap" or (buildDepError "sourcemap"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."stringsearch" or (buildDepError "stringsearch"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }