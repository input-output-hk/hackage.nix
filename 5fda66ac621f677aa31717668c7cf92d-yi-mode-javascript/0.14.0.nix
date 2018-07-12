{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi-mode-javascript";
          version = "0.14.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Yi developers <yi-devel@googlegroups.com>";
        author = "";
        homepage = "https://github.com/yi-editor/yi#readme";
        url = "";
        synopsis = "Yi editor javascript mode";
        description = "";
        buildType = "Simple";
      };
      components = {
        "yi-mode-javascript" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.binary
            hsPkgs.data-default
            hsPkgs.dlist
            hsPkgs.filepath
            hsPkgs.microlens-platform
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.yi-core
            hsPkgs.yi-language
            hsPkgs.yi-rope
          ];
          build-tools = [
            hsPkgs.buildPackages.alex
          ];
        };
      };
    }