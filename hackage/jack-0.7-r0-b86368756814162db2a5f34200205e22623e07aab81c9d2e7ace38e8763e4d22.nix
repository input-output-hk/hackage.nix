{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { pkgconfig = true; jackfree = true; buildexamples = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "jack"; version = "0.7"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Soenke Hahn, Stefan Kersten, Henning Thielemann";
      homepage = "http://www.haskell.org/haskellwiki/JACK";
      url = "";
      synopsis = "Bindings for the JACK Audio Connection Kit";
      description = "Bindings for the JACK Audio Connection Kit.\nIt has support both for PCM audio and MIDI handling.\n\nIn order to adapt to your system,\nyou may have to disable pkgConfig or jackFree cabal flags.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.midi)
          (hsPkgs.event-list)
          (hsPkgs.non-negative)
          (hsPkgs.bytestring)
          (hsPkgs.explicit-exception)
          (hsPkgs.transformers)
          (hsPkgs.enumset)
          (hsPkgs.array)
          (hsPkgs.unix)
          (hsPkgs.base)
          ];
        libs = (pkgs.lib).optional (!flags.pkgconfig) (pkgs."jack");
        pkgconfig = (pkgs.lib).optional (flags.pkgconfig) (pkgconfPkgs."jack");
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      exes = {
        "amplify" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.jack)
            (hsPkgs.base)
            ];
          };
        "capture" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.jack)
            (hsPkgs.explicit-exception)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.base)
            ];
          };
        "impulse-train" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.jack)
            (hsPkgs.explicit-exception)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.base)
            ];
          };
        "midimon" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.jack)
            (hsPkgs.midi)
            (hsPkgs.base)
            ];
          };
        "synth" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.jack)
            (hsPkgs.midi)
            (hsPkgs.event-list)
            (hsPkgs.explicit-exception)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.storablevector)
            (hsPkgs.array)
            (hsPkgs.base)
            ];
          };
        };
      };
    }