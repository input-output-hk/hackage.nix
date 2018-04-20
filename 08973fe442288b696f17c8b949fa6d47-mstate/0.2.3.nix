{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mstate";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<mail@n-sch.de>";
        author = "Nils Schweinsberg";
        homepage = "";
        url = "";
        synopsis = "MState: A consistent State monad for concurrent applications.";
        description = "MState offers a State monad which can be used in concurrent\napplications. It also manages new threads and waits until the\nwhole state monad has been evaluated/executed before it returns\nthe state values (if desired).";
        buildType = "Simple";
      };
      components = {
        mstate = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.monad-peel
          ];
        };
      };
    }