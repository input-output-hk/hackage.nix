{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aur";
          version = "0.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "colingw@gmail.com";
        author = "Colin Woodbury";
        homepage = "https://github.com/fosskers/haskell-aur";
        url = "";
        synopsis = "Access metadata from the Arch Linux User Repository.";
        description = "Access package information from Arch Linux's AUR via its\nRPC interface. The main exposed functions reflect\nthose of the RPC:\n- info:      Get metadata for one package.\n- multiinfo: Get metadata for many packages at once.\n- search:    Get limited metadata for packages that\nmatch a given regex.\n- msearch:   Get metadata for all packages maintained\nby a given user.\nBy default this library supports version 2 of the RPC,\nand hence version 3.x of the AUR.";
        buildType = "Simple";
      };
      components = {
        aur = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.lens
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.text
            hsPkgs.wreq
            hsPkgs.vector
          ];
        };
      };
    }