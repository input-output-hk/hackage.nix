{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dph-par";
          version = "0.5.1.99";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@cse.unsw.edu.au>";
        author = "The DPH Team";
        homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
        url = "";
        synopsis = "(deprecated)";
        description = "This package used to export DPH array primitives, but they're in dph-primpar now.";
        buildType = "Simple";
      };
      components = { dph-par = {}; };
    }