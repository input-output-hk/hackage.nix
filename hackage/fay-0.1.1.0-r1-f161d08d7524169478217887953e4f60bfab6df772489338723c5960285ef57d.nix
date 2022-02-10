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
      specVersion = "1.8";
      identifier = { name = "fay"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "http://chrisdone.com/fay";
      url = "";
      synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
      description = "Fay is a strict subset of Haskell which can be compiled (type-checked)\nwith GHC, and compiled to JavaScript.\n\n/Documentation/\n\nSee documentation at <http://fay-lang.org/> or build your own documentation with:\n\n> $ cabal build\n> $ dist/build/fay-docs/fay-docs\n\n\n/Examples/\n\nSee <http://fay-lang.org/#examples>.\n\n/Release Notes/\n\nLots of documentation updates, some runtime\nfixes, some more examples, tail-call optimization\nprototype.\n\n* Add analytics to .cabal.\n\n* Fix types for ghc.\n\n* Use continue (for now) for TCO (refs #19).\n\n* Tail recursive optimization prototype (refs #19).\n\n* Tail recursive example doc.\n\n* Ref example.\n\n* fromInteger/fromRational in the runtime (closes #20).\n\n* Add missing operators to Prelude and built-ins list (closes #16).\n\n* Throw error about unsupported `where' (closes #17).\n\n* Fix silly enumFromTo mistake.\n\n* A test-case that tail-recursive functions run iteratively.\n\n* Optimize constant patterns slightly, shaves off some time.\n\n* Add Fay.Show (preliminary implementation).\n\n* Add data/show example.\n\n* Add note about generating docs.\n\n* Add note that you need nodejs installed to run the tests.\n\n* Include google analytics in docs and generate index.html rather than home.html.\n\n* Updated dom example with onload handler.\n\n* Remove max-width to fix firefox.\n\n* Mention minifying slightly in docs.\n\n* Remove language-javascript dependency.\n\n* Remove non-ascii character in runtime.js\n\n* Don't print counts in fay-tests.\n\n* Add small note about livescript.\n\n* Added fork on github for docs.\n\n* Use === instead of == for jseq (closes #6).\n\n* Some word break on the pre's.\n\n* Rename modules from Main to X (closes #5).\n\n* Ignore more stuff.\n\n* Toggle examples.\n\n* Put examples side-by-side (closes #3).\n\n* s/strict/proper to avoid confusion.\n\n* Convert from function expression assignments to function definitions\n\nSee full history at: <https://github.com/chrisdone/fay/commits>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "fay" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          buildable = true;
          };
        "fay-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          buildable = true;
          };
        "fay-docs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ];
          buildable = true;
          };
        };
      };
    }