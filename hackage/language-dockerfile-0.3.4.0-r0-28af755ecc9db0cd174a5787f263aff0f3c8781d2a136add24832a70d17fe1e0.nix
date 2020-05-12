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
    flags = { dockerfmt = false; hadolint = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "language-dockerfile"; version = "0.3.4.0"; };
      license = "GPL-3.0-only";
      copyright = "Lukas Martinelli, Copyright (c) 2016,\nPedro Tacla Yamada, Copyright (c) 2016";
      maintainer = "tacla.yamada@gmail.com";
      author = "Lukas Martinelli,\nPedro Tacla Yamada";
      homepage = "https://github.com/beijaflor-io/language-dockerfile#readme";
      url = "";
      synopsis = "Dockerfile linter, parser, pretty-printer and embedded DSL";
      description = "Forked from @hadolint@.\n\nAll functions for parsing, printing and writting Dockerfiles are exported through @Language.Dockerfile@. For more fine-grained operations look for specific modules that implement a certain functionality.\n\nThere are two flags in this package, which enable building two executables:\n\n- @hadolint@ Enables building the @hadolint@ executable, though you might prefer to use the hadolint package directly\n- @dockerfmt@ Builds example pretty-printer usage, which reads a Dockerfile and pretty-prints it to stdout\n\nSee the <https://github.com/beijaflor-io/haskell-language-dockerfile GitHub project> for the source-code and examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ShellCheck" or (errorHandler.buildDepError "ShellCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
          ];
        buildable = true;
        };
      exes = {
        "dockerfmt" = {
          depends = [
            (hsPkgs."ShellCheck" or (errorHandler.buildDepError "ShellCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            (hsPkgs."language-dockerfile" or (errorHandler.buildDepError "language-dockerfile"))
            ];
          buildable = false;
          };
        "hadolint" = {
          depends = [
            (hsPkgs."ShellCheck" or (errorHandler.buildDepError "ShellCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            (hsPkgs."language-dockerfile" or (errorHandler.buildDepError "language-dockerfile"))
            ];
          buildable = false;
          };
        };
      tests = {
        "hadolint-unit-tests" = {
          depends = [
            (hsPkgs."ShellCheck" or (errorHandler.buildDepError "ShellCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        "hspec" = {
          depends = [
            (hsPkgs."ShellCheck" or (errorHandler.buildDepError "ShellCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."language-dockerfile" or (errorHandler.buildDepError "language-dockerfile"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }