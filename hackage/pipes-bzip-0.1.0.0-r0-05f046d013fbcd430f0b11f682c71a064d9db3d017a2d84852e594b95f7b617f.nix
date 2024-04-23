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
      identifier = { name = "pipes-bzip"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Smirnov Alexey";
      maintainer = "chemistmail@gmail.com";
      author = "Smirnov Alexey";
      homepage = "http://github.com/chemist/pipes-bzip#readme";
      url = "";
      synopsis = "Bzip2 compression and decompression for Pipes streams";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "pipes-bzip-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pipes-bzip" or (errorHandler.buildDepError "pipes-bzip"))
          ];
          buildable = true;
        };
      };
    };
  }