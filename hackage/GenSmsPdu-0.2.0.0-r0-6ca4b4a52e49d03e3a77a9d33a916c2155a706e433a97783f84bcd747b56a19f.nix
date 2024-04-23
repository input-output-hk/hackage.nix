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
      specVersion = "3.0";
      identifier = { name = "GenSmsPdu"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lazyswamp@gmail.com";
      author = "Kwanghoon Choi";
      homepage = "https://github.com/kwanghoon/GenSmsPdu";
      url = "";
      synopsis = "Automatic SMS message generator";
      description = "GenSmsPdu is a Haskell library designed for the random generation \nof 3GPP SMS messages. It includes a comprehensive data type that \nencompasses various 3GPP-defined SMS message formats, including \nSMS-SUBMIT and SMS-DELIVER. Leveraging QuickCheck, GenSmsPdu is \ncapable of automatically generating a series of random SMS messages \nin this specified data type.\n\nGenSmsPdu features an encoder that transforms SMS messages into \nbyte-formatted SMS PDUs (Protocol Data Units), along with a decoder \nfor the reverse process. At present, it is capable of generating only \nsingle-page SMS messages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      exes = {
        "GenSmsPdu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."GenSmsPdu" or (errorHandler.buildDepError "GenSmsPdu"))
          ];
          buildable = true;
        };
      };
      tests = {
        "GenSmsPdu-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."GenSmsPdu" or (errorHandler.buildDepError "GenSmsPdu"))
          ];
          buildable = true;
        };
      };
    };
  }