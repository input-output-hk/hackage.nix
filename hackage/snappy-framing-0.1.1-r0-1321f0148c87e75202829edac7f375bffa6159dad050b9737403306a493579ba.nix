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
      identifier = { name = "snappy-framing"; version = "0.1.1"; };
      license = "MPL-2.0";
      copyright = "Copyright (c) 2013 Kim Altintop";
      maintainer = "kim.altintop@gmail.com";
      author = "Kim Altintop";
      homepage = "https://github.com/kim/snappy-framing";
      url = "";
      synopsis = "Snappy Framing Format in Haskell";
      description = "Implementation of the Snappy framing format (SVN revision 71, cf.\n<http://code.google.com/p/snappy/source/browse/trunk/framing_format.txt?r=71>)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."snappy" or (errorHandler.buildDepError "snappy"))
        ];
        buildable = true;
      };
    };
  }