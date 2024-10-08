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
      identifier = { name = "palindromes"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007 - 2012 Johan Jeuring";
      maintainer = "johan@jeuring.net";
      author = "Johan Jeuring";
      homepage = "http://www.jeuring.net/homepage/palindromes/index.html";
      url = "";
      synopsis = "Finding palindromes in strings";
      description = "palindromes is an executable and a library which takes a file name, and\nreturns information about palindromes in the file.";
      buildType = "Simple";
    };
    components = {
      "library" = { buildable = true; };
      exes = {
        "palindromes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }