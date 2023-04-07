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
      specVersion = "1.10";
      identifier = { name = "fix-imports"; version = "2.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Laforge <qdunkan@gmail.com>";
      author = "Evan Laforge";
      homepage = "";
      url = "";
      synopsis = "Program to manage the imports of a haskell module";
      description = "`fix-imports` is a small standalone program to manage the import block of\na haskell program.  It will try to add import lines for qualified names\nwith no corresponding import, remove unused import lines, and keep the\nimport block sorted, with optional rules for grouping.\n\nSupport for unqualified imports is limited to symbols you explicitly\nconfigure, so if you list `System.FilePath.(</>)`, it will add that import\nwhen you use it, or remove when it's no longer used, but it won't go search\nmodules for unqualified imports.\n\nIt doesn't mess with non-managed unqualified imports, so you can still use\nunqualified imports, you just have to do it manually.\n\nSince it's a unix-style filter, it should be possible to integrate into any\neditor.  There's an example vimrc to bind to a key in vim.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fix-imports" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-lib-parser" or (errorHandler.buildDepError "ghc-lib-parser"))
            (hsPkgs."ghc-lib-parser-ex" or (errorHandler.buildDepError "ghc-lib-parser-ex"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-lib-parser" or (errorHandler.buildDepError "ghc-lib-parser"))
            (hsPkgs."ghc-lib-parser-ex" or (errorHandler.buildDepError "ghc-lib-parser-ex"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."test-karya" or (errorHandler.buildDepError "test-karya"))
            ];
          buildable = true;
          };
        };
      };
    }