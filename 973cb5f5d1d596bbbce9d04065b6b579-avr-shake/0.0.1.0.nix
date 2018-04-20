{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "avr-shake";
          version = "0.0.1.0";
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
            hsPkgs.dependent-sum
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.shake
          ];
        };
      };
    }