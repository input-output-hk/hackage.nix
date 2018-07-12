{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "stringtable-atom";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "John Meacham 2008, Audrey Tang 2008";
        maintainer = "audreyt@audreyt.org";
        author = "John Meacham";
        homepage = "";
        url = "";
        synopsis = "Memoize Strings as Atoms for fast comparison and sorting, with maps and sets";
        description = "Memoize Strings as Atoms for fast comparison and sorting, with maps and sets";
        buildType = "Simple";
      };
      components = {
        "stringtable-atom" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.containers
          ];
        };
      };
    }