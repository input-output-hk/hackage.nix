{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bindings-yices";
          version = "0.1";
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
        "bindings-yices" = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.yices ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }