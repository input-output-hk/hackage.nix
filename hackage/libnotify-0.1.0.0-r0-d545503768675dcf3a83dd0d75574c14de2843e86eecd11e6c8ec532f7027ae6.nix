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
      identifier = { name = "libnotify"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Matvey Aksenov <matvey.aksenov@gmail.com>";
      author = "Emon Tsukimiya, Matvey Aksenov";
      homepage = "";
      url = "";
      synopsis = "Bindings to libnotify library";
      description = "The package provides a high level interface to libnotify API (see \"Libnotify\")\n\n\"Libnotify.C.Notify\" and \"Libnotify.C.NotifyNotification\" modules contain\nbindings to C-level functions if you're into that";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          ];
        libs = [ (pkgs."notify" or (errorHandler.sysDepError "notify")) ];
        buildable = true;
        };
      };
    }