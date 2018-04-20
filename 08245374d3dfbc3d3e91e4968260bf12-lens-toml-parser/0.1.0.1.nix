{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lens-toml-parser";
          version = "0.1.0.1";
        };
        license = "ISC";
        copyright = "Copyright (c) 2017, Henry Till";
        maintainer = "henrytill@gmail.com";
        author = "Henry Till";
        homepage = "https://github.com/xngns/lens-toml-parser";
        url = "";
        synopsis = "Lenses for toml-parser";
        description = "Lenses for toml-parser";
        buildType = "Simple";
      };
      components = {
        lens-toml-parser = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.time
            hsPkgs.profunctors
            hsPkgs.toml-parser
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.dwergaz
              hsPkgs.toml-parser
              hsPkgs.lens-family
              hsPkgs.lens-toml-parser
            ];
          };
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }