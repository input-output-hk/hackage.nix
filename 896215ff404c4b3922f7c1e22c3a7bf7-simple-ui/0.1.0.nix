{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "simple-ui";
          version = "0.1.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Piotr Borek <piotrborek@op.pl>";
        author = "Piotr Borek <piotrborek@op.pl>";
        homepage = "";
        url = "";
        synopsis = "UI library for terminal.";
        description = "UI library for terminal.";
        buildType = "Simple";
      };
      components = {
        simple-ui = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.exceptions
            hsPkgs.vty
            hsPkgs.lens
            hsPkgs.vector
            hsPkgs.data-default-class
            hsPkgs.template-haskell
            hsPkgs.stm
          ];
        };
      };
    }