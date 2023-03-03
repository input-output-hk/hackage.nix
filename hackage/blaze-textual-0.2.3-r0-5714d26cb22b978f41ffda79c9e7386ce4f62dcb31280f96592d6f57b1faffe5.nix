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
    flags = { developer = false; native = true; integer-simple = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "blaze-textual"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.";
      maintainer = "Andrey Prokopenko <persiantiger@yandex.ru>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://github.com/swamp-agr/blaze-textual";
      url = "";
      synopsis = "Fast rendering of common datatypes";
      description = "A library for efficiently rendering Haskell datatypes to\nbytestrings.\n\n/Note/: if you use GHCi or Template Haskell, please see the\n@README@ file for important details about building this package,\nand other packages that depend on it:\n<https://github.com/swamp-agr/blaze-textual#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (pkgs.lib).optional (!flags.native) (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))) ++ (if flags.integer-simple
          then [
            (hsPkgs."integer-simple" or (errorHandler.buildDepError "integer-simple"))
            ]
          else [
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            ]);
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."blaze-textual" or (errorHandler.buildDepError "blaze-textual"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }