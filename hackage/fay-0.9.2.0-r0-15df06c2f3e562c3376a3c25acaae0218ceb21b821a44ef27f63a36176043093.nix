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
      identifier = { name = "fay"; version = "0.9.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "http://fay-lang.org/";
      url = "";
      synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
      description = "Fay is a proper subset of Haskell which can be compiled (type-checked)\nwith GHC, and compiled to JavaScript. It is lazy, pure, with a Fay monad,\nan FFI, tail-recursion optimization (experimental). It implements no type\nsystem, for type-checking you should use GHC.\n\n/Documentation/\n\nSee documentation at <http://fay-lang.org/> or build your own documentation with:\n\n> \$ cabal unpack fay\n> \$ cd fay-*\n> \$ cabal install\n> \$ dist/build/fay-docs/fay-docs\n\n\n/Examples/\n\nSee <http://fay-lang.org/#examples>.\n\n/Release Notes/\n\n* Fix name encoding.\n\n* Add content-type to HTML generation.\n\n* Add calculator example.\n\n* Support built-in operators as (+), (*), etc.\n\n* Fix self-referential thunks (see #89).\n\n* Don't import modules twice.\n\n* Handle where bindings in function definitions.\n\n* Support record updates.\n\n* Move to GHC type-checking (with --no-ghc).\n\n* Remove invalid chars from UTF-8 tests.\n\n* Remove --autorun, now it's the default.\n\n* Fix nullary constructor comparison.\n\n* Replace . with \$ in module name generation.\n\n* Reverse -fdevel flag.\n\n* Skip type declarations in where.\n\n* Add true/false to keywords.\n\n* Add laziness back to infix operators.\n\n* Switch to applicative parsing of options.\n\n* Fix parens in conversion functions.\n\nSee full history at: <https://github.com/chrisdone/fay/commits>";
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
          ] ++ (pkgs.lib).optionals (flags.devel) [
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
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
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
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
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
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
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
            ];
          };
        };
      };
    }