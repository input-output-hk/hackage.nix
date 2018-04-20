{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Pipe";
          version = "2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Matti Niemenmaa <matti.niemenmaa+pipe@iki.fi>";
        author = "Matti Niemenmaa";
        homepage = "http://iki.fi/matti.niemenmaa/pipe/";
        url = "";
        synopsis = "Process piping library";
        description = "A library with operations for piping data through a pipeline of processes.";
        buildType = "Simple";
      };
      components = {
        Pipe = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.filepath
          ];
        };
      };
    }