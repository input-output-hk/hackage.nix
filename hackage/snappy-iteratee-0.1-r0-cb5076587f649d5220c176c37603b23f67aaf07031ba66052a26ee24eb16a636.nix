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
      identifier = { name = "snappy-iteratee"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iand675@gmail.com";
      author = "Ian Duncan";
      homepage = "http://github.com/iand675/snappy-iteratee";
      url = "";
      synopsis = "An enumeratee that uses Google's snappy compression library.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."snappy" or (errorHandler.buildDepError "snappy"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }