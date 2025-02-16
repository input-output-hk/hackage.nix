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
      specVersion = "3.0";
      identifier = { name = "opus"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Markus Barenhoff <mbarenh@alios.org>, Yuto Takano <moa17stock@gmail.com>, Haskell Opus Library Contributors";
      maintainer = "Yuto Takano <moa17stock@gmail.com>";
      author = "Markus Barenhoff <mbarenh@alios.org>";
      homepage = "https://github.com/yutotakano/opus";
      url = "";
      synopsis = "Bindings to libopus for the Opus audio codec";
      description = "Provides Haskell FFI bindings to libopus, the reference implementation of\nthe Opus Codec (RFC 6716 and RFC 8251). The Opus codec is designed for\ninteractive speech and audio transmission over the Internet, but is also\nintended for storage and streaming.\n\nThe library provides an interface to the encoder and decoder, as well as a\nConduit wrapper for operating with stream data.\n\nTo use this library, you need to have the libopus library installed on your\nsystem. Please see the README for more info.\n\nThe compiled Haskell code will link dynamically by default, so if\nyou are distributing a precompiled binary, you may want to look into\nstatic linking.\n\nThis package is a fork of the original opus package by Markus Barenhoff,\nwhich is no longer maintained (and was never published to Hackage).\nPermission has been granted by the original author to publish this fork\nwith the same name under the BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
        ];
        pkgconfig = [
          (pkgconfPkgs."opus" or (errorHandler.pkgConfDepError "opus"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "opus-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."opus" or (errorHandler.buildDepError "opus"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }