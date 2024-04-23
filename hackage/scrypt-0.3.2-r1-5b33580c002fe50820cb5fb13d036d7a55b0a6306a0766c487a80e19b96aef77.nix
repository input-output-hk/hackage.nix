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
      specVersion = "1.8";
      identifier = { name = "scrypt"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 Falko Peters";
      maintainer = "Falko Peters <falko.peters@gmail.com>";
      author = "Falko Peters <falko.peters@gmail.com>";
      homepage = "http://github.com/informatikr/scrypt";
      url = "";
      synopsis = "Stronger password hashing via sequential memory-hard functions.";
      description = "This package provides bindings to Colin Percival's `scrypt`\nimplementation (<http://www.tarsnap.com/scrypt.html>). Scrypt is a key\nderivation function designed to be far more secure against hardware\nbrute-force attacks than alternative functions such as PBKDF2 or bcrypt.\n\nDetails of the scrypt key derivation function are given in a paper by\nColin Percival, Stronger Key Derivation via Sequential Memory-Hard\nFunctions: <http://www.tarsnap.com/scrypt/scrypt.pdf>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
        ];
        buildable = true;
      };
    };
  }