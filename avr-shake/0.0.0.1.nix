{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "avr-shake";
          version = "0.0.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "https://github.com/mokus0/avr-shake";
        url = "";
        synopsis = "AVR Crosspack actions for shake build systems.";
        description = "AVR Crosspack actions for shake build systems.";
        buildType = "Simple";
      };
      components = {
        avr-shake = {
          depends  = [
            hsPkgs.base
            hsPkgs.shake
          ];
        };
      };
    }