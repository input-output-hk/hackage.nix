{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cached-traversable";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Thomas Tuegel";
        maintainer = "ttuegel@gmail.com";
        author = "Thomas Tuegel";
        homepage = "";
        url = "";
        synopsis = "Transparent, persistent caching of lazy, traversable structures";
        description = "cached-traversable provides persistent (on-disk) caching of lazy, traversable\nstructures for any element type which has a Binary instance. Think of it as\na poor man's acid-state for deterministic programs.";
        buildType = "Simple";
      };
      components = {
        cached-traversable = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
      };
    }