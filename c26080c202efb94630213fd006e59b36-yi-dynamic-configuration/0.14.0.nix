{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi-dynamic-configuration";
          version = "0.14.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Yi developers <yi-devel@googlegroups.com>";
        author = "";
        homepage = "https://github.com/yi-editor/yi#readme";
        url = "";
        synopsis = "Dynamic configuration support for Yi";
        description = "";
        buildType = "Simple";
      };
      components = {
        yi-dynamic-configuration = {
          depends  = [
            hsPkgs.base
            hsPkgs.dyre
            hsPkgs.yi-core
            hsPkgs.transformers-base
            hsPkgs.mtl
            hsPkgs.microlens-platform
            hsPkgs.text
            hsPkgs.yi-rope
          ];
        };
      };
    }