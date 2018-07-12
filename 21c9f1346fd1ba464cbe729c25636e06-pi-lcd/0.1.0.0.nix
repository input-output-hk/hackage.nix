{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pi-lcd";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "© Patrick Pelletier, 2017";
        maintainer = "code@funwithsoftware.org";
        author = "Patrick Pelletier";
        homepage = "https://github.com/ppelleti/pi-lcd";
        url = "";
        synopsis = "Control an Adafruit character LCD and keypad kit on a Raspberry Pi";
        description = "This package allows using an\n<https://www.adafruit.com/categories/808 Adafruit character LCD and keypad kit>\non a Raspberry Pi from Haskell.\nEverything you need to use one of these LCDs is exposed in the\n@System.Hardware.PiLcd@ module.  The submodules are only exposed\nbecause they might be useful to reuse for other types of hardware,\nsuch as if you are using an MCP23017 port expander or an HD44780\ndisplay controller in some other context.  But if you're using the\nAdafruit character LCD and keypad kit, all you need is\n@System.Hardware.PiLcd@.";
        buildType = "Simple";
      };
      components = {
        "pi-lcd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.clock
            hsPkgs.text
            hsPkgs.unix
            hsPkgs.unordered-containers
          ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
        exes = {
          "pi-lcd-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pi-lcd
              hsPkgs.text
            ];
          };
          "pi-lcd-custom" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pi-lcd
              hsPkgs.text
            ];
          };
          "pi-lcd-ui" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pi-lcd
              hsPkgs.text
            ];
          };
          "pi-lcd-test-rom" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pi-lcd
              hsPkgs.text
            ];
          };
        };
      };
    }