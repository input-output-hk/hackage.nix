{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      pkgconfig = true;
      jackfree = true;
      buildexamples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.14";
      identifier = {
        name = "jack";
        version = "0.6.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Soenke Hahn, Stefan Kersten, Henning Thielemann";
      homepage = "http://www.haskell.org/haskellwiki/JACK";
      url = "";
      synopsis = "Bindings for the JACK Audio Connection Kit";
      description = "Very basic bindings for the JACK Audio Connection Kit.\nIt has support both for PCM audio and MIDI handling.\n\nIn order to adapt to your system,\nyou may have to disable pkgConfig or jackFree cabal flags.";
      buildType = "Simple";
    };
    components = {
      "jack" = {
        depends  = [
          (hsPkgs.midi)
          (hsPkgs.bytestring)
          (hsPkgs.explicit-exception)
          (hsPkgs.transformers)
          (hsPkgs.enumset)
          (hsPkgs.array)
          (hsPkgs.unix)
          (hsPkgs.base)
        ];
        libs = pkgs.lib.optional (!_flags.pkgconfig) (pkgs."jack");
        pkgconfig = pkgs.lib.optional (_flags.pkgconfig) (pkgconfPkgs.jack);
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      exes = {
        "amplify" = {
          depends  = [
            (hsPkgs.jack)
            (hsPkgs.base)
          ];
        };
        "impulse-train" = {
          depends  = [
            (hsPkgs.jack)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.base)
          ];
        };
        "midimon" = {
          depends  = [
            (hsPkgs.jack)
            (hsPkgs.midi)
            (hsPkgs.base)
          ];
        };
      };
    };
  }