{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "alsa-mixer";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Thomas Tuegel";
        maintainer = "Thomas Tuegel <ttuegel@gmail.com>";
        author = "Thomas Tuegel <ttuegel@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Bindings to the ALSA simple mixer API.";
        description = "This package provides bindings to the ALSA simple mixer API.";
        buildType = "Simple";
      };
      components = {
        alsa-mixer = {
          depends  = [
            hsPkgs.base
            hsPkgs.alsa-core
            hsPkgs.bytestring
            hsPkgs.template-haskell
          ];
          libs = [ pkgs.asound ];
        };
      };
    }