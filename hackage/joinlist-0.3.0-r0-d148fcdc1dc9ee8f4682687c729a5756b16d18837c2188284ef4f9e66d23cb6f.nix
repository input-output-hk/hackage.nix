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
      identifier = { name = "joinlist"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley 2009-2010";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Join list - symmetric list type ";
      description = "A JoinList - a list type with with cheap catenation.\n\nGenerally speaking, joinlists have cheap construction (cons,\nsnoc and join aka. append) and expensive manipulation. For most\nuse-cases Data.Sequence is a more appropriate data structure.\n\nChangelog\n\n0.3.0 - Added views as per Data.Sequence and takes and drops.\nChanged show instance to mimic Data.Sequence.\n\n0.2.0 - more operations and some bugfixes (toList...), @wrap@\nrenamed to @singleton@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }