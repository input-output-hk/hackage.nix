{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lowgl";
          version = "0.3.1.2";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "evanrinehart@gmail.com";
        author = "Evan Rinehart";
        homepage = "";
        url = "";
        synopsis = "Basic gl wrapper and reference";
        description = "This library exposes a vastly simplified subset of OpenGL that is hopefully still complete enough for many purposes, such as following tutorials, making simple games, and demos.";
        buildType = "Simple";
      };
      components = {
        lowgl = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.linear
            hsPkgs.gl
            hsPkgs.data-default
          ];
        };
      };
    }