{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ZipperAG";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Pedro Martins";
        maintainer = "Pedro Martins <pedromartins4@gmail.com>";
        author = "Pedro Martins <pedromartins4@gmail.com>";
        homepage = "www.di.uminho.pt/~prmartins";
        url = "";
        synopsis = "An implementationg of Attribute Grammars using Functional Zippers";
        description = "An implementationg of Attribute Grammars using Functional Zippers";
        buildType = "Simple";
      };
      components = {
        ZipperAG = {
          depends  = [
            hsPkgs.base
            hsPkgs.syz
          ];
        };
      };
    }