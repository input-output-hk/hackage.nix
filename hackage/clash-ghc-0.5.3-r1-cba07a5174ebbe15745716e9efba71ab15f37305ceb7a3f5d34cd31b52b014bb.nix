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
      identifier = { name = "clash-ghc"; version = "0.5.3"; };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2012-2015 University of Twente";
      maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
      author = "Christiaan Baaij";
      homepage = "http://www.clash-lang.org/";
      url = "";
      synopsis = "CAES Language for Synchronous Hardware";
      description = "CλaSH (pronounced ‘clash’) is a functional hardware description language that\nborrows both its syntax and semantics from the functional programming language\nHaskell. The merits of using a functional language to describe hardware comes\nfrom the fact that combinational circuits can be directly modelled as\nmathematical functions and that functional languages lend themselves very well\nat describing and (de-)composing mathematical functions.\n\nThis package provides:\n\n* CλaSH Compiler binary using GHC/Haskell as a frontend\n\n\nPrelude library: <http://hackage.haskell.org/package/clash-prelude>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "clash" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unbound-generics" or (errorHandler.buildDepError "unbound-generics"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."clash-lib" or (errorHandler.buildDepError "clash-lib"))
            (hsPkgs."clash-vhdl" or (errorHandler.buildDepError "clash-vhdl"))
            (hsPkgs."clash-systemverilog" or (errorHandler.buildDepError "clash-systemverilog"))
            (hsPkgs."clash-prelude" or (errorHandler.buildDepError "clash-prelude"))
            (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
            ] ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
          buildable = true;
          };
        };
      };
    }