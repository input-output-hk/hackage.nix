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
      identifier = { name = "spike"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gtener@gmail.com";
      author = "Krzysztof Skrzętnicki";
      homepage = "http://github.com/Tener/spike";
      url = "";
      synopsis = "Experimental web browser";
      description = "Experimental web browser based on WebKit-Gtk+";
      buildType = "Simple";
      };
    components = {
      exes = {
        "spike" = {
          depends = [
            (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."rosezipper" or (errorHandler.buildDepError "rosezipper"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          pkgconfig = [
            (pkgconfPkgs."libsoup-gnome-2.4" or (errorHandler.pkgConfDepError "libsoup-gnome-2.4"))
            ];
          buildable = true;
          };
        };
      };
    }