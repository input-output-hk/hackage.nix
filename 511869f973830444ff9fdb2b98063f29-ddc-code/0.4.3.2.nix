{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ddc-code";
          version = "0.4.3.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The Disciplined Disciple Compiler Strike Force";
        homepage = "http://disciple.ouroborus.net";
        url = "";
        synopsis = "Disciplined Disciple Compiler base libraries.";
        description = "Disciplined Disciple Compiler base libraries.";
        buildType = "Simple";
      };
      components = {
        "ddc-code" = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
          ];
        };
      };
    }