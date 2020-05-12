{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "language-c-inline"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Manuel M T Chakravarty <chak@justtesting.org>";
      author = "Manuel M T Chakravarty";
      homepage = "https://github.com/mchakravarty/language-c-inline/";
      url = "";
      synopsis = "Inline C & Objective-C code in Haskell for language interoperability";
      description = "This library provides inline C & Objective-C code using GHC's support for\nquasi-quotation. In particular, it enables the use of foreign libraries\nwithout a dedicated bridge or binding. Here is a tiny example:\n\n> log :: String -> IO ()\n> log msg = \$(objc 'msg [cexp| NSLog (@\"Here is a message from Haskell: %@\", msg) |])\n\nFor more information, see <https://github.com/mchakravarty/language-c-inline/wiki>.\n\nKnown bugs: <https://github.com/mchakravarty/language-c-inline/issues>\n\n* New in 0.3.0.0: Boxed Haskell types without a dedicated type mapping are marshalled using stable\npointers.\n\n* New in 0.2.0.0: Support for multiple free variables in one inline expression as well\nas for inline code returning 'void'.\n\n* New in 0.1.0.0: We are just getting started! This is just a ROUGH AND\nHIGHLY EXPERIMENTAL PROTOTYPE.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."language-c-quote" or (errorHandler.buildDepError "language-c-quote"))
          (hsPkgs."mainland-pretty" or (errorHandler.buildDepError "mainland-pretty"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "concept" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-c-quote" or (errorHandler.buildDepError "language-c-quote"))
            (hsPkgs."language-c-inline" or (errorHandler.buildDepError "language-c-inline"))
            ];
          frameworks = [
            (pkgs."Foundation" or (errorHandler.sysDepError "Foundation"))
            ];
          buildable = true;
          };
        };
      };
    }