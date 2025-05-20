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
    flags = { pkgconfig = true; jackfree = true; buildexamples = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "jack"; version = "0.7.2.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann, Stefan Kersten, Soenke Hahn <soenkehahn@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/JACK";
      url = "";
      synopsis = "Bindings for the JACK Audio Connection Kit";
      description = "Bindings for the JACK Audio Connection Kit <http://jackaudio.org/>.\nIt has support both for PCM audio and MIDI handling.\n\nIn order to adapt to your system,\nyou may have to disable pkgConfig or jackFree cabal flags.\n\nYou must compile your clients with @-threaded@\notherwise you will encounter segfaults.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."enumset" or (errorHandler.buildDepError "enumset"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        libs = pkgs.lib.optional (!flags.pkgconfig) (pkgs."jack" or (errorHandler.sysDepError "jack"));
        pkgconfig = pkgs.lib.optional (flags.pkgconfig) (pkgconfPkgs."jack" or (errorHandler.pkgConfDepError "jack"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      exes = {
        "jack-amplify" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."jack" or (errorHandler.buildDepError "jack"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "jack-callbacks" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."jack" or (errorHandler.buildDepError "jack"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "jack-latency" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."jack" or (errorHandler.buildDepError "jack"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "jack-capture" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."jack" or (errorHandler.buildDepError "jack"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "jack-impulse-train" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."jack" or (errorHandler.buildDepError "jack"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "jack-midimon" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."jack" or (errorHandler.buildDepError "jack"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "jack-melody" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."jack" or (errorHandler.buildDepError "jack"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "jack-synth" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."jack" or (errorHandler.buildDepError "jack"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
    };
  }