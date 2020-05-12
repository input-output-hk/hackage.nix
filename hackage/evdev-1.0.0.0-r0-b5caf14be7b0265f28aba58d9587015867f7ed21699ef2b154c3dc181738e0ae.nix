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
      specVersion = "2.4";
      identifier = { name = "evdev"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "George Thomas";
      author = "George Thomas";
      homepage = "https://github.com/georgefst/evdev";
      url = "";
      synopsis = "Bindings to libevdev";
      description = "Provides access to the Linux event device interface, with an optional high-level Streamly-based API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
          (hsPkgs."posix-paths" or (errorHandler.buildDepError "posix-paths"))
          (hsPkgs."rawfilepath" or (errorHandler.buildDepError "rawfilepath"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          ];
        libs = [ (pkgs."evdev" or (errorHandler.sysDepError "evdev")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }