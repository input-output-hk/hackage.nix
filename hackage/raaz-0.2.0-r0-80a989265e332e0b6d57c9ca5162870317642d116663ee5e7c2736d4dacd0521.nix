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
      opt-native = false;
      vector128 = false;
      vector256 = false;
      vector512 = false;
      avx2 = false;
      linux-getrandom = false;
      liquidhaskell = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "raaz"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ppk@cse.iitk.ac.in";
      author = "Piyush P Kurur";
      homepage = "http://github.com/raaz-crypto/raaz";
      url = "";
      synopsis = "The raaz cryptographic library.";
      description = "Raaz is a cryptographic library for Haskell. The library\nis designed with a special emphasis on using the type system of\nHaskell to eliminate a large set of vulnerabilities like buffer\noverflows, timing attacks etc. It also strives to achieve this\nsafety with no compromise on performance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."Advapi32" or (errorHandler.sysDepError "Advapi32"))
          (pkgs."Kernel32" or (errorHandler.sysDepError "Kernel32"))
          ];
        build-tools = (pkgs.lib).optional (system.isWindows) (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
        buildable = true;
        };
      exes = {
        "raaz" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."raaz" or (errorHandler.buildDepError "raaz"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."raaz" or (errorHandler.buildDepError "raaz"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "liquidspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ] ++ (pkgs.lib).optionals (flags.liquidhaskell) [
            (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.liquidhaskell then true else false;
          };
        };
      benchmarks = {
        "blaze-vs-write" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."raaz" or (errorHandler.buildDepError "raaz"))
            ];
          buildable = true;
          };
        "bench-ciphers" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."raaz" or (errorHandler.buildDepError "raaz"))
            ];
          buildable = true;
          };
        "primitives" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."raaz" or (errorHandler.buildDepError "raaz"))
            ];
          buildable = true;
          };
        };
      };
    }