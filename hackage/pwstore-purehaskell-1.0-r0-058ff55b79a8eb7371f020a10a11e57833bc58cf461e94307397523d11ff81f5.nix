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
      specVersion = "1.2";
      identifier = { name = "pwstore-purehaskell"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pjscott@iastate.edu";
      author = "Peter Scott";
      homepage = "https://github.com/PeterScott/pwstore";
      url = "";
      synopsis = "Secure password storage, in pure Haskell.";
      description = "To store passwords securely, they should be salted,\nthen hashed with a slow hash function. This library\nuses PBKDF1-SHA256, and handles all the details.\nIt is implemented in pure Haskell, with no C\ndependencies. For a faster implementation, the\npwstore-fast package has the exact same API but is\nabout 25 times faster due to its use of the cryptohash\npackage, which is partly implemented in C. This pure\nHaskell version is visibly slower, but still quite usable.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
    };
  }