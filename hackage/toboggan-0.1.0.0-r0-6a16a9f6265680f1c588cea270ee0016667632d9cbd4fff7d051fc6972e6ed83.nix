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
      identifier = { name = "toboggan"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Vanessa McHale";
      maintainer = "tmchale@wisc.edu";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/toboggan#readme";
      url = "";
      synopsis = "Twitter bot generator";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."madlang" or (errorHandler.buildDepError "madlang"))
          (hsPkgs."clit" or (errorHandler.buildDepError "clit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
        ];
        buildable = true;
      };
      exes = {
        "toboggan" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."toboggan" or (errorHandler.buildDepError "toboggan"))
          ];
          buildable = true;
        };
      };
    };
  }