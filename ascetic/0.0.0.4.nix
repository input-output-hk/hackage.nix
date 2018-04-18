{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ascetic";
          version = "0.0.0.4";
        };
        license = "MIT";
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