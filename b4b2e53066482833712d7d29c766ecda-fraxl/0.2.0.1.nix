{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      install-examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fraxl";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Will Fancher";
        maintainer = "willfancher38@gmail.com";
        author = "Will Fancher";
        homepage = "https://github.com/ElvishJerricco/fraxl";
        url = "";
        synopsis = "Cached and parallel data fetching.";
        description = "Fraxl is a free monad designed to make concurrent data fetching easy.";
        buildType = "Simple";
      };
      components = {
        "fraxl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.exceptions
            hsPkgs.free
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.dependent-sum
            hsPkgs.dependent-map
            hsPkgs.vinyl
            hsPkgs.type-aligned
          ];
        };
        exes = {
          "examples" = {
            depends  = pkgs.lib.optionals _flags.install-examples [
              hsPkgs.base
              hsPkgs.fraxl
              hsPkgs.transformers
              hsPkgs.mtl
            ];
          };
        };
        benchmarks = {
          "monadbench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.fraxl
              hsPkgs.time
            ];
          };
        };
      };
    }