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
    flags = { build-apps = false; build-readme = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "network-can"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 sorki";
      maintainer = "srk@48.io";
      author = "sorki";
      homepage = "https://github.com/DistRap/network-can";
      url = "";
      synopsis = "CAN bus networking";
      description = "Talk to CAN buses using Linux SocketCAN and SLCAN";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      sublibs = {
        "slcan" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-can" or (errorHandler.buildDepError "network-can"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "socketcan" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-can" or (errorHandler.buildDepError "network-can"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
          buildable = true;
        };
      };
      exes = {
        "hcandump" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-can" or (errorHandler.buildDepError "network-can"))
            (hsPkgs."network-can".components.sublibs.socketcan or (errorHandler.buildDepError "network-can:socketcan"))
          ];
          buildable = if !flags.build-apps then false else true;
        };
        "hcanbridge" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-can" or (errorHandler.buildDepError "network-can"))
            (hsPkgs."network-can".components.sublibs.slcan or (errorHandler.buildDepError "network-can:slcan"))
            (hsPkgs."network-can".components.sublibs.socketcan or (errorHandler.buildDepError "network-can:socketcan"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."serialport" or (errorHandler.buildDepError "serialport"))
          ];
          buildable = if !flags.build-apps then false else true;
        };
        "hslcanserial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-can" or (errorHandler.buildDepError "network-can"))
            (hsPkgs."network-can".components.sublibs.slcan or (errorHandler.buildDepError "network-can:slcan"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."serialport" or (errorHandler.buildDepError "serialport"))
          ];
          buildable = if !flags.build-apps then false else true;
        };
        "hslcanudp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-can" or (errorHandler.buildDepError "network-can"))
            (hsPkgs."network-can".components.sublibs.slcan or (errorHandler.buildDepError "network-can:slcan"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
          ];
          buildable = if !flags.build-apps then false else true;
        };
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-can" or (errorHandler.buildDepError "network-can"))
            (hsPkgs."network-can".components.sublibs.socketcan or (errorHandler.buildDepError "network-can:socketcan"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.markdown-unlit.components.exes.markdown-unlit or (pkgs.pkgsBuildBuild.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
          ];
          buildable = if !flags.build-readme then false else true;
        };
      };
      tests = {
        "pure" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."network-can" or (errorHandler.buildDepError "network-can"))
            (hsPkgs."network-can".components.sublibs.slcan or (errorHandler.buildDepError "network-can:slcan"))
            (hsPkgs."network-can".components.sublibs.socketcan or (errorHandler.buildDepError "network-can:socketcan"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }