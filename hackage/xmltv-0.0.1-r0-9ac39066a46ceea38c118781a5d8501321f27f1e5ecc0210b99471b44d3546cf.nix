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
      identifier = { name = "xmltv"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "per.odlund@gmail.com";
      author = "Per Odlund";
      homepage = "http://github.com/dagle/hs-xmltv";
      url = "";
      synopsis = "Show tv channels in the terminal";
      description = "A program for showing whats on tv in the terminal using xmltv.\nComes with a lib and a program to fetch and prettyprint the info.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
        buildable = true;
        };
      exes = {
        "tv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))
            (hsPkgs."wl-pprint-terminfo" or (errorHandler.buildDepError "wl-pprint-terminfo"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."wl-pprint-extras" or (errorHandler.buildDepError "wl-pprint-extras"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }