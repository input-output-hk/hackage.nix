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
      identifier = { name = "gnome-keyring"; version = "0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/haskell-gnome-keyring/";
      url = "";
      synopsis = "Bindings for libgnome-keyring";
      description = "The GNOME Keyring is a service for securely storing per-user secret\ninformation, such as passwords and encryption keys. This library is a\nbinding to the libgnome-keyring C library.\n\nDocumentation for the original library is available at\n<http://library.gnome.org/devel/gnome-keyring/stable/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        libs = [
          (pkgs."gnome-keyring" or (errorHandler.sysDepError "gnome-keyring"))
        ];
        pkgconfig = [
          (pkgconfPkgs."gnome-keyring-1" or (errorHandler.pkgConfDepError "gnome-keyring-1"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }