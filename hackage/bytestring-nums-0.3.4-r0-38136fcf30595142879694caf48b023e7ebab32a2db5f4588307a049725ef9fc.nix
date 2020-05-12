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
    flags = { cli = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "bytestring-nums"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jason.dusek@gmail.com";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/bytestring-nums";
      url = "";
      synopsis = "Parse numeric literals from ByteStrings.";
      description = "Parse numeric literals from ByteStrings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "spoj-eugene" = { buildable = if flags.cli then true else false; };
        };
      };
    }