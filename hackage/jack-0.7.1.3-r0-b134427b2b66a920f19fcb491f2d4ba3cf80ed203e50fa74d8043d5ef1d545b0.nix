{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      pkgconfig = true;
      jackfree = true;
      buildexamples = false;
    };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "jack";
        version = "0.7.1.3";
      };
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
      "jack" = {
        depends  = [
          (hsPkgs.midi)
          (hsPkgs.event-list)
          (hsPkgs.non-negative)
          (hsPkgs.bytestring)
          (hsPkgs.explicit-exception)
          (hsPkgs.transformers)
          (hsPkgs.enumset)
          (hsPkgs.array)
          (hsPkgs.semigroups)
          (hsPkgs.base)
        ];
        libs = pkgs.lib.optional (!flags.pkgconfig) (pkgs."jack");
        pkgconfig = pkgs.lib.optional (flags.pkgconfig) (pkgconfPkgs.jack);
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      exes = {
        "jack-amplify" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.jack)
            (hsPkgs.base)
          ];
        };
        "jack-capture" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.jack)
            (hsPkgs.explicit-exception)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.base)
          ];
        };
        "jack-impulse-train" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.jack)
            (hsPkgs.explicit-exception)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.base)
          ];
        };
        "jack-midimon" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.jack)
            (hsPkgs.midi)
            (hsPkgs.base)
          ];
        };
        "jack-melody" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.jack)
            (hsPkgs.midi)
            (hsPkgs.event-list)
            (hsPkgs.non-negative)
            (hsPkgs.explicit-exception)
            (hsPkgs.transformers)
            (hsPkgs.base)
          ];
        };
        "jack-synth" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
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