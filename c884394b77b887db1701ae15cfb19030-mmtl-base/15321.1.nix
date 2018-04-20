{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "mmtl-base";
          version = "15321.1";
        };
        license = "BSD-3-Clause";
        copyright = "2011 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>, Bas van Dijk <v.dijk.bas@gmail.com>, Matthew Farkas-Dyck";
        maintainer = "strake888@gmail.com";
        author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>, Bas van Dijk <v.dijk.bas@gmail.com>, Matthew Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "MonadBase type-class for mmtl";
        description = "Adaptation of Mikhail Vorozhtsov's and Bas van Dijk's transformers-base package to mmtl";
        buildType = "Simple";
      };
      components = {
        mmtl-base = {
          depends  = [
            hsPkgs.base
            hsPkgs.mmtl
          ];
        };
      };
    }