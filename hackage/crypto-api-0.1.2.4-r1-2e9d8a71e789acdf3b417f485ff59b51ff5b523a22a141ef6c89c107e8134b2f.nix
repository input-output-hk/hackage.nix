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
    flags = { tests = false; benchmarks = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "crypto-api"; version = "0.1.2.4"; };
      license = "BSD-3-Clause";
      copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>, Dominic Steinitz (see Data.LargeWord module)";
      maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>, Dominic Steinitz";
      homepage = "http://trac.haskell.org/crypto-api/wiki";
      url = "";
      synopsis = "A generic interface for cryptographic operations";
      description = "A generic interface for cryptographic operations,\nplatform independent quality RNG, property tests\nand known-answer tests (KATs) for common algorithms,\nand a basic benchmark infrastructure.\nMaintainers of hash and cipher implementations are\nencouraged to add instances for the classes defined\nin Crypto.Classes.  Crypto users are similarly\nencouraged to use the interfaces defined in the Classes\nmodule.\nAny concepts or functions of general use to more than\none cryptographic algorithm (ex: padding) is within\nscope of this package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ] ++ pkgs.lib.optionals (flags.tests) [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ]) ++ pkgs.lib.optional (flags.benchmarks) (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"));
        libs = pkgs.lib.optional (system.isWindows) (pkgs."advapi32" or (errorHandler.sysDepError "advapi32"));
        buildable = true;
      };
    };
  }