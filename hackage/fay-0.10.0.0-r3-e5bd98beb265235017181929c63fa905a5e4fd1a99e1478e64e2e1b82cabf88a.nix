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
    flags = { devel = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "fay"; version = "0.10.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "chrisdone@gmail.com, adam@edea.se";
      author = "Chris Done, Adam Bergmark";
      homepage = "http://fay-lang.org/";
      url = "";
      synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
      description = "Fay is a proper subset of Haskell which can be compiled (type-checked)\nwith GHC, and compiled to JavaScript. It is lazy, pure, with a Fay monad,\nan FFI, tail-recursion optimization (experimental). It implements no type\nsystem, for type-checking you should use GHC.\n\n/Documentation/\n\nSee documentation at <http://fay-lang.org/> or build your own documentation with:\n\n> \$ cabal unpack fay\n> \$ cd fay-*\n> \$ cabal install\n> \$ dist/build/fay-docs/fay-docs\n\n\n/Examples/\n\nSee <http://fay-lang.org/#examples>.\n\n/Release Notes/\n\n* Add TCO optimization.\n\n* Added uncurrying optimization for non-partial applications.\n\n* Add simple benchmarking program.\n\n* Add SVG logo.\n\n* Added Defined type and appropriate serialization.\n\n* Treat Maybe as a nullable value in conversions.\n\n* Added oscillator example.\n\n* Add optimization flag.\n* Support tuple serialization.\n* Fix list length in pats (closes #145).\n\n* Name resolution and some export list support.\n* Add codeworld space invaders example.\n\n* NoImplicitPrelude is now passed automatically to GHC. Does not break code that uses the pragma (see #134).\n\n* Add support for list comprehensions using desugaring from Haskell report. See #40 and #132.\n\n* Make error messages a tiny bit friendlier, and some general house-keeping.\n\n* Support negation expressions (see #116).\n\n* Rewrite readFromFay using only Data, no Read/Show requirements (see #112).\n\nSee full history at: <https://github.com/faylang/fay/commits>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."language-ecmascript" or (buildDepError "language-ecmascript"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."groom" or (buildDepError "groom"))
          (hsPkgs."random" or (buildDepError "random"))
          ] ++ (pkgs.lib).optionals (!flags.devel) [
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."test-framework" or (buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
          (hsPkgs."test-framework-th" or (buildDepError "test-framework-th"))
          ];
        };
      exes = {
        "fay" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."language-ecmascript" or (buildDepError "language-ecmascript"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."groom" or (buildDepError "groom"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            ];
          };
        "fay-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."language-ecmascript" or (buildDepError "language-ecmascript"))
            (hsPkgs."groom" or (buildDepError "groom"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or (buildDepError "test-framework-th"))
            ];
          };
        "fay-docs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."language-ecmascript" or (buildDepError "language-ecmascript"))
            (hsPkgs."groom" or (buildDepError "groom"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        };
      };
    }