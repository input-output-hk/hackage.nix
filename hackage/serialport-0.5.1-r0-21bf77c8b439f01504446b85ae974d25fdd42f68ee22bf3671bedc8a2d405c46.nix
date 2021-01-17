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
      identifier = { name = "serialport"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011 Joris Putcuyps,\n(c) 2020-2021 David Cox";
      maintainer = "David Cox <standard.semiconductor@gmail.com>";
      author = "Joris Putcuyps, David Cox";
      homepage = "https://github.com/standardsemiconductor/serialport";
      url = "";
      synopsis = "Cross platform serial port library.";
      description = "Cross platform haskell library for using the serial port.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (if !system.isWindows
          then [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]
          else [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]);
        buildable = true;
        };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."serialport" or (errorHandler.buildDepError "serialport"))
            ];
          buildable = true;
          };
        };
      };
    }