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
      identifier = { name = "deka"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/deka";
      url = "";
      synopsis = "Decimal floating point arithmetic";
      description = "deka provides decimal floating point arithmetic.  It\nis based on the decNumber C library, which is available\nat\n\n<http://speleotrove.com/decimal/decnumber.html>\n\ndecNumber, in turn, implements the General Decimal Arithmetic\nSpecification, which is available at\n\n<http://speleotrove.com/decimal/>\n\nTo use deka, you will first need to install the decNumber\nC library.  To make this easy for users of UNIX-like operating\nsystems, I have packaged decNumber; the package is at\n\n<https://github.com/massysett/decnumber/releases>\n\nFor more on deka, please see the Github home page at\n\n<https://github.com/massysett/deka>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."decnumber" or (errorHandler.sysDepError "decnumber")) ];
        buildable = true;
        };
      tests = {
        "tasty-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          libs = [
            (pkgs."decnumber" or (errorHandler.sysDepError "decnumber"))
            ];
          buildable = true;
          };
        };
      };
    }