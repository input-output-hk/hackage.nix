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
      identifier = { name = "password"; version = "3.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Dennis Gosnell, 2019; Felix Paulusma, 2020";
      maintainer = "cdep.illabout@gmail.com, felix.paulusma@gmail.com";
      author = "Dennis Gosnell, Felix Paulusma";
      homepage = "https://github.com/cdepillabout/password/tree/master/password#readme";
      url = "";
      synopsis = "Hashing and checking of passwords";
      description = "A library providing functionality for working with plain-text and hashed passwords\nwith different types of algorithms.\n\n== API\n\nEvery supported hashing algorithm has its own module (e.g. \"Data.Password.Bcrypt\")\nwhich exports its own @hashPassword@ and @checkPassword@ functions, as well as all the\ntypes and functions in this module. If you are not sure about the specifics of an\nalgorithm you want to use, you can rest assured that by using the @hashPassword@ function\nof the respective algorithm you are not making any big mistakes, security-wise.\n\nOf course, if you know what you're doing and you want more fine-grained control\nover the hashing function, you can adjust it using the @hashPasswordWithParams@\nfunction of the respective algorithm.\n\n== Algorithms\n\nGenerally, the most \"secure\" algorithm is believed to be @Argon2@, then @scrypt@,\nthen @bcrypt@, and lastly @PBKDF2@.\n@bcrypt@ and @PBKDF2@ are the most established algorithms, so they have been tried and\ntested, though they both lack a memory cost, and therefore have a greater vulnerability\nto specialized hardware attacks.\n\nWhen choosing an algorithm, and you have no idea which to pick, just go for @bcrypt@ if\nyour password does not need the highest security possible.\nIt's still a fine way for hashing passwords, and the cost is easily adjustable if needed.\nIf your needs do require stronger protection, you should find someone who can advise you\non this topic. (And if you're already knowledgeable enough, you know what to do)";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."password-types" or (errorHandler.buildDepError "password-types"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."password" or (errorHandler.buildDepError "password"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
        "password-tasty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."password" or (errorHandler.buildDepError "password"))
            (hsPkgs."password-types" or (errorHandler.buildDepError "password-types"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."scrypt" or (errorHandler.buildDepError "scrypt"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }