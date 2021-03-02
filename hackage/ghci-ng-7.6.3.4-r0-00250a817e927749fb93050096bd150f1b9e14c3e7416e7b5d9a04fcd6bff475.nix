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
      specVersion = "1.12";
      identifier = { name = "ghci-ng"; version = "7.6.3.4"; };
      license = "BSD-3-Clause";
      copyright = "© 2005 The University of Glasgow";
      maintainer = "hvr@gnu.org";
      author = "The GHC Team";
      homepage = "https://github.com/hvr/ghci-ng";
      url = "";
      synopsis = "Extended GHCi fork";
      description = "This provides an augmented version of @ghci-7.6.3@ installed under\nthe name @ghci-ng@ containing backported, proposed and\nexperimental features.\n\nCurrently, @ghci-ng@ has the following additional features\ncompared to the vanilla @ghci-7.6.3@ program:\n\n* backported @:complete@ command for non-interactive completion\n(see <http://ghc.haskell.org/trac/ghc/ticket/5687 GHC#5687>)\n\n* backported customizable continuation prompt (@:set prompt2@)\nand bugfix for @:set +m@-style completion\n(see <http://ghc.haskell.org/trac/ghc/ticket/8076 GHC#8076>)\n\n* Support for @%l@ line-number prompt substitution\n(proposed for GHC 7.8, <http://ghc.haskell.org/trac/ghc/ticket/8047 GHC#8047>)\n\n* Add @:show linker@ command to @:help@ output\n(<http://ghc.haskell.org/trac/ghc/ticket/8074 GHC#8074>)\n\n* Add missing @:show imports@ to completion table\n(<http://ghc.haskell.org/trac/ghc/ticket/8075 GHC#7075>)\n\n* Fix GHCi macros not shadowing builtins\n(<http://ghc.haskell.org/trac/ghc/ticket/8113 GHC#8113>)\n\n* Supports being used via @cabal repl --with-ghc=ghci-ng@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghci-ng" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ] ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
          buildable = true;
          };
        };
      };
    }