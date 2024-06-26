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
      specVersion = "1.6";
      identifier = { name = "bcrypt"; version = "0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Andrew Miller";
      maintainer = "andrew@amxl.com";
      author = "Andrew Miller";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to the bcrypt password hash";
      description = "Haskell bindings to the bcrypt password hash.\n\nUnlike other bindings already in existence, this package is designed to allow users to work directly with password hash strings that include information about the hashing algorithm, strength, and salt. This approach allows hashed passwords to be stored in a single field that can also be used by non-Haskell applications, and makes it easy to implement a policy of updating passwords hashed to an old policy next time the plaintext password is available.\n\nVersion 1.1.3 of the OpenWall C source for bcrypt is included in this package (<http://www.openwall.com/crypt/>). The only modification is that the flag which enables the use of assembler has been disabled.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
        ];
        buildable = true;
      };
    };
  }