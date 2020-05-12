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
    flags = { usenativewindowslibraries = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "OpenAL"; version = "1.7.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2003-2015 Sven Panne";
      maintainer = "Sven Panne <svenpanne@gmail.com>, Stephen Blackheath <haskell.openal2.stephen@blacksapphire.com>";
      author = "Sven Panne";
      homepage = "https://github.com/haskell-openal/ALUT";
      url = "";
      synopsis = "A binding to the OpenAL cross-platform 3D audio API";
      description = "A Haskell binding for the OpenAL cross-platform 3D audio API,\nappropriate for use with gaming applications and many other\ntypes of audio applications.\n\nOn Windows, this package works well with the \\\"OpenAL Soft\\\" binary\ndistribution from <http://kcat.strangesoft.net/openal.html>.\nType \\'cabal install --extra-lib-dirs=\\<DIR\\>\\' where \\<DIR\\> is the\ndirectory where libOpenAL32.dll.a is located (must be an absolute path).\nThen rename soft_oal.dll to OpenAL32.dll and put it somewhere in\nthe PATH. I found that c:\\\\Windows\\\\ worked.\n\nThis package has also been tested on GNU/Linux and iOS.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."ObjectName" or (errorHandler.buildDepError "ObjectName"))
          (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."OpenAL32" or (errorHandler.sysDepError "OpenAL32")) ]
          else (pkgs.lib).optional (!(system.isOsx || system.isIos)) (pkgs."openal" or (errorHandler.sysDepError "openal"));
        frameworks = (pkgs.lib).optionals (!(system.isWindows && flags.usenativewindowslibraries)) ((pkgs.lib).optional (system.isOsx || system.isIos) (pkgs."OpenAL" or (errorHandler.sysDepError "OpenAL")));
        buildable = true;
        };
      };
    }