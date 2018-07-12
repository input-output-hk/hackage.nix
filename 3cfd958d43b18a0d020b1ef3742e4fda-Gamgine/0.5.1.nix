{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Gamgine";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "daniel.trstenjak@gmail.com";
        author = "Daniel Trstenjak";
        homepage = "";
        url = "";
        synopsis = "Some kind of game library or set of utilities.";
        description = "Some kind of game library or set of utilities, which are mostly/certainly only usable for my own toy projects.";
        buildType = "Simple";
      };
      components = {
        "Gamgine" = {
          depends  = [
            hsPkgs.base
            hsPkgs.GLFW-b
            hsPkgs.OpenGLRaw
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.Vec
            hsPkgs.utility-ht
            hsPkgs.directory
            hsPkgs.StateVar
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.unordered-containers
            hsPkgs.data-lens
            hsPkgs.pretty-show
            hsPkgs.cpphs
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.zlib
            hsPkgs.ListZipper
            hsPkgs.composition
          ];
        };
      };
    }