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
    flags = {
      develop = false;
      orphans = true;
      static = false;
      examples = false;
      cpphs = false;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "spiros"; version = "0.4.2"; };
      license = "Apache-2.0";
      copyright = "2019 Sam Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "https://github.com/sboosali/spiros#readme";
      url = "";
      synopsis = "Spiros Boosalis's Custom Prelude";
      description = "My custom prelude.\nI'm @user\\/sboo@ on Hackage, @\\@sboosali@ on GitHub, and @\\/u\\/spirosboosalis@ on reddit.\n\nDiverges slightly from base's: adding, removing, and shadowing.\n\nCompatible with (and built\\/tested against):\n\n* 5 GHCs — from « ghc-7.10.* » (in Debian) to  « ghc-8.6.* » (the latest, circa 2019).\n* GHCJS  — the Haskell→JavaScript transpiler (« ghcjs-8.6.* »).\n* Musl   — « ghc » statically-linked against « libmusl »\n(instead of dynamically-linked against « glibc », the default).\n* 3 OSs — Linux (« linux »), Windows (« win32 »), and MacOS (« darwin »). (Should work on FreeBSD and Andriod, too).\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."cpuinfo" or (errorHandler.buildDepError "cpuinfo"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."string-conv" or (errorHandler.buildDepError "string-conv"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
        ] ++ [ (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq")) ];
        buildable = true;
      };
      exes = {
        "example-spiros" = {
          depends = [
            (hsPkgs."spiros" or (errorHandler.buildDepError "spiros"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
      tests = {
        "doc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."spiros" or (errorHandler.buildDepError "spiros"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = if compiler.isGhcjs && true then false else true;
        };
      };
    };
  }