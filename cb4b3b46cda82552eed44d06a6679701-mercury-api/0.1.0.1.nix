{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mercury-api";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "© Patrick Pelletier, 2017";
        maintainer = "code@funwithsoftware.org";
        author = "Patrick Pelletier";
        homepage = "https://github.com/ppelleti/hs-mercury-api";
        url = "";
        synopsis = "Haskell binding to Mercury API for ThingMagic RFID readers";
        description = "This package is a Haskell binding to the \\\"Mercury API\\\" C API for\nThingMagic RFID readers.  It is especially geared toward the\n<https://www.sparkfun.com/products/14066 SparkFun Simultaneous RFID Reader>,\nwhich uses ThingMagic's M6e Nano module, but it should work with other\nThingMagic readers.  (Though currently, only support for serial readers\nis compiled in.)  Most of the function and type names are the same as\ntheir counterparts in the C API, with the @TMR_@ prefix dropped.  For more\nin-depth, language-independent documentation of Mercury API, see\n<http://www.thingmagic.com/images/Downloads/Docs/MercuryAPI_ProgrammerGuide_for_v1.27.3.pdf Mercury API Programmers Guide>.";
        buildType = "Simple";
      };
      components = {
        mercury-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-terminal
            hsPkgs.bytestring
            hsPkgs.clock
            hsPkgs.hashable
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
          build-tools = [ hsPkgs.hsc2hs ];
        };
        exes = {
          tmr-params = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.bytestring
              hsPkgs.mercury-api
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
          tmr-firmware = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.mercury-api
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
          tmr-read = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.bytestring
              hsPkgs.mercury-api
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
          tmr-write = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.bytestring
              hsPkgs.mercury-api
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
          tmr-lock = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.mercury-api
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
          tmr-gpio = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.mercury-api
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
        };
        tests = {
          replay = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.mercury-api
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
          unit = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.mercury-api
              hsPkgs.text
            ];
          };
          param-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.mercury-api
              hsPkgs.text
            ];
          };
        };
      };
    }