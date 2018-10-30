{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      manualtests = false;
    };
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "language-c-inline";
        version = "0.7.6.1";
      };
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
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.language-c-quote)
          (hsPkgs.mainland-pretty)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "concept" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.language-c-quote)
            (hsPkgs.language-c-inline)
          ];
          frameworks = [
            (pkgs."Foundation")
          ];
        };
      };
    };
  }