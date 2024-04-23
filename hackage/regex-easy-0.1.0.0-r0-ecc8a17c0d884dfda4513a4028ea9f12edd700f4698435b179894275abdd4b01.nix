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
      specVersion = "1.10";
      identifier = { name = "regex-easy"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2017 zerobuzz.net";
      maintainer = "mf@zerobuzz.net";
      author = "Matthias Fischmann";
      homepage = "https://github.com/zerobuzz/regex-easy";
      url = "";
      synopsis = "sugar for regex-pcre";
      description = "This packages is intended to make perl developers happy to use Haskell.  (:";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
        ];
        buildable = true;
      };
    };
  }