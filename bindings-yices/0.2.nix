{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      yices-dynamic = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bindings-yices";
          version = "0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "pepeiborra@gmail.com";
        author = "Jose Iborra";
        homepage = "";
        url = "";
        synopsis = "Bindings to the Yices theorem prover";
        description = "";
        buildType = "Simple";
      };
      components = {
        bindings-yices = {
          depends  = [ hsPkgs.base ];
          libs = [
            pkgs.yices
          ] ++ pkgs.lib.optional _flags.yices-dynamic pkgs.gmp;
        };
      };
    }