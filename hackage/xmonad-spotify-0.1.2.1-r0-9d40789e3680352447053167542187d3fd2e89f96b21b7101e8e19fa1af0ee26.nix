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
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "xmonad-spotify"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018-2019 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Bind media keys to work with Spotify";
      description = "Bind media keys to work with Spotify using dbus.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
        buildable = true;
        };
      };
    }