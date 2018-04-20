{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bindings-posix";
          version = "1.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
        author = "Maurício C. Antunes";
        homepage = "";
        url = "";
        synopsis = "Low level bindings to posix.";
        description = "";
        buildType = "Simple";
      };
      components = {
        bindings-posix = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
          libs = [ pkgs.pthread ];
        };
      };
    }