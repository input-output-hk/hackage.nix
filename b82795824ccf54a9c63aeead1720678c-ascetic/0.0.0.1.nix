{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ascetic";
          version = "0.0.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Andrei Lapets <lapets@bu.edu>";
        author = "Andrei Lapets";
        homepage = "";
        url = "";
        synopsis = "Generic markup builder.";
        description = "Module for assembling/emitting files in any XML-like language.";
        buildType = "Simple";
      };
      components = {
        ascetic = {
          depends  = [
            hsPkgs.base
            hsPkgs.MissingH
          ];
        };
      };
    }