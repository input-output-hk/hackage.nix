{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "make-package";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Chris Done, Philipp Balzarek";
        maintainer = "p.balzarek@googlemail.com";
        author = "Philipp Balzarek";
        homepage = "https://github.com/Philonous/make-package";
        url = "";
        synopsis = "Make a cabalized package";
        description = "Create a cabalized haskell project";
        buildType = "Simple";
      };
      components = {
        exes = {
          make-package = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.bytestring
              hsPkgs.configurator
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.github
              hsPkgs.haskeline
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.text
              hsPkgs.time
              hsPkgs.lens
              hsPkgs.lens-datetime
            ];
          };
        };
      };
    }