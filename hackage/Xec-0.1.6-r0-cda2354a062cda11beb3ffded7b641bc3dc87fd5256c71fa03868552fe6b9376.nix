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
      specVersion = "1.8";
      identifier = { name = "Xec"; version = "0.1.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daiki Handa (xanxys@gmail.com)";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Gtk command launcher with identicon";
      description = "Xec (pron. exec) is a launcher with identicon. It's originally intended to be used with xmonad,\nbut you can use it anywhere gtk is available. Hit enter twice in a row to run the command as-is.\nHit enter once to complete the command with highlited one.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Xec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            ];
          buildable = true;
          };
        };
      };
    }