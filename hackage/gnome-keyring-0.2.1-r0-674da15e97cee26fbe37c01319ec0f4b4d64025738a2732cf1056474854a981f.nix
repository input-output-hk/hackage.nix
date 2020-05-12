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
      identifier = { name = "gnome-keyring"; version = "0.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "";
      url = "";
      synopsis = "Bindings for libgnome-keyring";
      description = "The GNOME Keyring is a service for securely storing per-user secret\ninformation, such as passwords and encryption keys. This library is a\nbinding to the libgnome-keyring C library.\n\nAPI documentation is available at\n<https://dl.dropbox.com/u/1947532/gnome-keyring_0.2/index.html>.\n\nDocumentation for the original library is available at\n<http://library.gnome.org/devel/gnome-keyring/stable/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        libs = [
          (pkgs."gnome-keyring" or (errorHandler.sysDepError "gnome-keyring"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gnome-keyring-1" or (errorHandler.pkgConfDepError "gnome-keyring-1"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }