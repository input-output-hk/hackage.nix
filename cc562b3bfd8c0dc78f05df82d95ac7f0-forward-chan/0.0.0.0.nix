{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "forward-chan";
          version = "0.0.0.0";
        };
        license = "LicenseRef-Apache";
        copyright = "";
        maintainer = "matt@mirman.com";
        author = "Matthew Mirman";
        homepage = "http://github.com/mmirman/forward-chan";
        url = "";
        synopsis = "Concurrent channels with a forwarding primitive";
        description = "An implementation of the forward primitive, useful for proof terms from the sequent caluclus formulation of linear logic\n\nSee <http://github.com/mmirman/forward-chan> and <http://www.cs.cmu.edu/~fp/papers/tldi12.pdf> for more information on this primitive.";
        buildType = "Simple";
      };
      components = {
        "forward-chan" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unagi-chan
            hsPkgs.SafeSemaphore
            hsPkgs.stm
          ];
        };
      };
    }