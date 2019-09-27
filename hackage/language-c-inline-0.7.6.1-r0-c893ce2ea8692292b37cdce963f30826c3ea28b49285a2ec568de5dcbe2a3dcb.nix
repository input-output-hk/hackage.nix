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
    flags = { manualtests = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "language-c-inline"; version = "0.7.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Manuel M T Chakravarty <chak@justtesting.org>";
      author = "Manuel M T Chakravarty";
      homepage = "https://github.com/mchakravarty/language-c-inline/";
      url = "";
      synopsis = "Inline C & Objective-C code in Haskell for language interoperability";
      description = "This library provides inline C & Objective-C code using GHC's support for\nquasi-quotation. In particular, it enables the use of foreign libraries\nwithout a dedicated bridge or binding. Here is a tiny example:\n\n> nslog :: String -> IO ()\n> nslog msg = \$(objc ['msg :> ''String] (void [cexp| NSLog(@\"Here is a message from Haskell: %@\", msg) |]))\n\nFor more information, see <https://github.com/mchakravarty/language-c-inline/wiki>.\n\nKnown bugs: <https://github.com/mchakravarty/language-c-inline/issues>\n\n* New in 0.7.6: (1) Record marshalling; (2) foreign pointer-class marshalling; (3) custom type\nmarshallers. Generated _objc.m files now always include \"HsFFI.h\" (as the tool can generate type names\ndeclared in that header). Marshals 'Bool' as 'BOOL'. Marshal 'Int' and 'Word' to 'NSInteger' and\n'NSUInteger', respectively.\n\n* New in 0.6.0: Introduction of explicit marshalling hints (for more flexibility and support of\nGHC 7.8's untyped Template Haskell quotations)\n\n* New in 0.5.0: Marshalling of numeric types\n\n* New in 0.4.0: Maybe types are marshalled as pointers that may be nil & bug fixes.\n\n* New in 0.3.0: Boxed Haskell types without a dedicated type mapping are marshalled using stable\npointers.\n\n* New in 0.2.0: Support for multiple free variables in one inline expression as well\nas for inline code returning 'void'.\n\n* New in 0.1.0: We are just getting started! This is just a ROUGH AND\nHIGHLY EXPERIMENTAL PROTOTYPE.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."language-c-quote" or (buildDepError "language-c-quote"))
          (hsPkgs."mainland-pretty" or (buildDepError "mainland-pretty"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "concept" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."language-c-quote" or (buildDepError "language-c-quote"))
            (hsPkgs."language-c-inline" or (buildDepError "language-c-inline"))
            ];
          frameworks = [ (pkgs."Foundation" or (sysDepError "Foundation")) ];
          buildable = if flags.manualtests then true else false;
          };
        };
      };
    }