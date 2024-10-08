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
    flags = { use-system-progressbar = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "bytestring-progress"; version = "1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Wick <awick@uhsure.com>";
      author = "Adam Wick <awick@uhsure.com>";
      homepage = "http://github.com/acw/bytestring-progress";
      url = "";
      synopsis = "A library for tracking the consumption of a lazy ByteString";
      description = "In some cases, it is useful to know how fast a ByteString is being\nconsumed. Typically, this could be to report some measure of progress\nto a waiting user, but it could also be to perform some form of testing\non input / consumption code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ] ++ pkgs.lib.optional (flags.use-system-progressbar) (hsPkgs."terminal-progress-bar" or (errorHandler.buildDepError "terminal-progress-bar"));
        buildable = true;
      };
    };
  }