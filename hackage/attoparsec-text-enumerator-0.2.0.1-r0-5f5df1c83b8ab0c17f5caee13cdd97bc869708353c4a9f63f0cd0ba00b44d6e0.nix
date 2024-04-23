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
      identifier = {
        name = "attoparsec-text-enumerator";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "Copyright (c) Felipe Lessa 2010, John Millikin 2010";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>, John Millikin <jmillikin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "(deprecated)";
      description = "This package has been deprecated.  You recommend that you use\neither @attoparsec-enumerator@ or @attoparsec-conduit@\npackages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec-text" or (errorHandler.buildDepError "attoparsec-text"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
        ];
        buildable = true;
      };
    };
  }