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
      identifier = { name = "log2json"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "harold@hotelling.net";
      author = "harold@hotelling.net";
      homepage = "https://github.com/haroldl/log2json";
      url = "";
      synopsis = "Turn log file records into JSON.";
      description = "Take an httpd.conf style LogFormat string and parse\nlog files into JSON records.";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "log2json" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            ];
          buildable = true;
          };
        };
      };
    }