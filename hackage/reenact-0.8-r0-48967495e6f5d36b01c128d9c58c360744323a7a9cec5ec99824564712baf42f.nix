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
      identifier = { name = "reenact"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "A reimplementation of the Reactive library.";
      description = "Reenact is a reimplementation of the /Reactive/ library by Conal Elliott.\nIt preserves semantics and most operators of the original library. In\nparticular the 'Monoid', 'Applicative' and 'Monad' instances for\n'Events', 'Reactives' and 'Behaviours' are available and have the original semantics.\nThe implementation however is completely different, based on asynchronous\nchannels instead of the 'unamb' operator.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."hamid" or (errorHandler.buildDepError "hamid"))
          (hsPkgs."HCodecs" or (errorHandler.buildDepError "HCodecs"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          ];
        buildable = true;
        };
      };
    }