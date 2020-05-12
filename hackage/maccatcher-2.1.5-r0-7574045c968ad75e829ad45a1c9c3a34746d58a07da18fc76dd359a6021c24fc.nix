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
    flags = { split-base = true; cli = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "maccatcher"; version = "2.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@solidsnack.be";
      author = "Jason Dusek";
      homepage = "";
      url = "";
      synopsis = "Obtain the host MAC address on *NIX and Windows.";
      description = "Obtain the host MAC address on *NIX and Windows.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "maccatcher" = { buildable = if flags.cli then true else false; };
        };
      };
    }