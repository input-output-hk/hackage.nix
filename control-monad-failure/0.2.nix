{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      mtl = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "control-monad-failure";
          version = "0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "pepeiborra@gmail.com";
        author = "Pepe Iborra, Michael Snoyman, Nicolas Pouillard";
        homepage = "http://github.com/pepeiborra/control-monad-failure";
        url = "";
        synopsis = "A class for monads which can fail with an error.";
        description = "A class for monads which can fail with an error.";
        buildType = "Simple";
      };
      components = {
        control-monad-failure = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ] ++ pkgs.lib.optional _flags.mtl hsPkgs.mtl;
        };
      };
    }