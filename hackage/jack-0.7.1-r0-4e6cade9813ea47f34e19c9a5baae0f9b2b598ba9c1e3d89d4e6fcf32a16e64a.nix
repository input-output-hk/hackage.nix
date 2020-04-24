{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { pkgconfig = true; jackfree = true; buildexamples = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "jack"; version = "0.7.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann, Stefan Kersten, Soenke Hahn <soenkehahn@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/JACK";
      url = "";
      synopsis = "Bindings for the JACK Audio Connection Kit";
      description = "Bindings for the JACK Audio Connection Kit <http://jackaudio.org/>.\nIt has support both for PCM audio and MIDI handling.\n\nIn order to adapt to your system,\nyou may have to disable pkgConfig or jackFree cabal flags.\n\nYou should compile your clients with @ghc --make -O2 -threaded ...@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
          (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
          (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."enumset" or ((hsPkgs.pkgs-errors).buildDepError "enumset"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = (pkgs.lib).optional (!flags.pkgconfig) (pkgs."jack" or ((hsPkgs.pkgs-errors).sysDepError "jack"));
        pkgconfig = (pkgs.lib).optional (flags.pkgconfig) (pkgconfPkgs."jack" or ((hsPkgs.pkgs-errors).pkgConfDepError "jack"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "jack-amplify" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."jack" or ((hsPkgs.pkgs-errors).buildDepError "jack"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "jack-capture" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."jack" or ((hsPkgs.pkgs-errors).buildDepError "jack"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "jack-impulse-train" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."jack" or ((hsPkgs.pkgs-errors).buildDepError "jack"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "jack-midimon" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."jack" or ((hsPkgs.pkgs-errors).buildDepError "jack"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "jack-melody" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."jack" or ((hsPkgs.pkgs-errors).buildDepError "jack"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "jack-synth" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."jack" or ((hsPkgs.pkgs-errors).buildDepError "jack"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }