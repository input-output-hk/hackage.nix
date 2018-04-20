{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "containers-deepseq";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "";
        url = "";
        synopsis = "Provide orphan NFData instances for containers as needed.";
        description = "";
        buildType = "Simple";
      };
      components = {
        containers-deepseq = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
          ];
        };
      };
    }