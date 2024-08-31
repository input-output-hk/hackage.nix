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
      specVersion = "2.2";
      identifier = { name = "crux-llvm"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "(c) Galois, Inc 2014-2022";
      maintainer = "rscott@galois.com, kquick@galois.com, langston@galois.com";
      author = "Galois Inc.";
      homepage = "";
      url = "";
      synopsis = "A verification tool for C programs.";
      description = "\nThis tool (and corresponding C library) are intended for verifying C\nprograms using verification specifications embedded in the input\nsource files (i.e. it allows for writing Crucible specifications\nby using C as the specification language).\n\nThis tool provides:\n\n* a Haskell library with the core functionality,\n\n* a @crux-llvm@ executable used to run the verification when given one\nor more C or C++ source files\n\n* a set of supplemental C source files, include files, and LLVM\nruntime library bitcode files to use for building the input C\nfiles into verifiable LLVM BC files.\n\n* a @crux-llvm-svcomp@ executable that is designed to run verification\nof challenge inputs for the SV-COMP competition, generating\nresults tailored to the format that SV-COMP expects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crucible" or (errorHandler.buildDepError "crucible"))
          (hsPkgs."crucible-symio" or (errorHandler.buildDepError "crucible-symio"))
          (hsPkgs."crucible-llvm" or (errorHandler.buildDepError "crucible-llvm"))
          (hsPkgs."crux" or (errorHandler.buildDepError "crux"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."what4" or (errorHandler.buildDepError "what4"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bv-sized" or (errorHandler.buildDepError "bv-sized"))
          (hsPkgs."config-schema" or (errorHandler.buildDepError "config-schema"))
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."llvm-pretty" or (errorHandler.buildDepError "llvm-pretty"))
          (hsPkgs."llvm-pretty-bc-parser" or (errorHandler.buildDepError "llvm-pretty-bc-parser"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parameterized-utils" or (errorHandler.buildDepError "parameterized-utils"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
        ];
        buildable = true;
      };
      exes = {
        "crux-llvm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."crucible" or (errorHandler.buildDepError "crucible"))
            (hsPkgs."crucible-symio" or (errorHandler.buildDepError "crucible-symio"))
            (hsPkgs."crucible-llvm" or (errorHandler.buildDepError "crucible-llvm"))
            (hsPkgs."crux" or (errorHandler.buildDepError "crux"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."what4" or (errorHandler.buildDepError "what4"))
            (hsPkgs."crux-llvm" or (errorHandler.buildDepError "crux-llvm"))
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
        };
        "crux-llvm-for-ide" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."crucible" or (errorHandler.buildDepError "crucible"))
            (hsPkgs."crucible-symio" or (errorHandler.buildDepError "crucible-symio"))
            (hsPkgs."crucible-llvm" or (errorHandler.buildDepError "crucible-llvm"))
            (hsPkgs."crux" or (errorHandler.buildDepError "crux"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."what4" or (errorHandler.buildDepError "what4"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."crux-llvm" or (errorHandler.buildDepError "crux-llvm"))
            (hsPkgs."lumberjack" or (errorHandler.buildDepError "lumberjack"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
        };
        "crux-llvm-svcomp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."crucible" or (errorHandler.buildDepError "crucible"))
            (hsPkgs."crucible-symio" or (errorHandler.buildDepError "crucible-symio"))
            (hsPkgs."crucible-llvm" or (errorHandler.buildDepError "crucible-llvm"))
            (hsPkgs."crux" or (errorHandler.buildDepError "crux"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."what4" or (errorHandler.buildDepError "what4"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."crux-llvm" or (errorHandler.buildDepError "crux-llvm"))
            (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
      tests = {
        "crux-llvm-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."crucible" or (errorHandler.buildDepError "crucible"))
            (hsPkgs."crucible-symio" or (errorHandler.buildDepError "crucible-symio"))
            (hsPkgs."crucible-llvm" or (errorHandler.buildDepError "crucible-llvm"))
            (hsPkgs."crux" or (errorHandler.buildDepError "crux"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."what4" or (errorHandler.buildDepError "what4"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-sugar" or (errorHandler.buildDepError "tasty-sugar"))
            (hsPkgs."crux-llvm" or (errorHandler.buildDepError "crux-llvm"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
          ];
          buildable = true;
        };
      };
    };
  }