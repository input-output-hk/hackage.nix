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
      identifier = { name = "hosc"; version = "0.13"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, Stefan Kersten and others, 2006-2012";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape, Stefan Kersten";
      homepage = "http://rd.slavepianos.org/?t=hosc";
      url = "";
      synopsis = "Haskell Open Sound Control";
      description = "@hosc@ implements a subset of the /Open Sound Control/\nbyte protocol, <http://opensoundcontrol.org/>.\n\n\"Sound.OpenSoundControl\" implements the actual protocol.\n\n\"Sound.OSC.Transport.FD\" implements a\n/file descriptor/ based transport layer for @UDP@\nand @TCP@.\n\n\"Sound.OSC.Transport.Monad\" implements a\nmonadic interface to the @FD@ transport layer.\n\nComposite modules are at \"Sound.OSC\" and \"Sound.OSC.FD\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }