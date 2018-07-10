{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "inj-base";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Vladislav Zavialov <vlad.z.4096@gmail.com>";
        author = "Vladislav Zavialov";
        homepage = "";
        url = "";
        synopsis = "'Inj' instances for 'base'";
        description = "";
        buildType = "Simple";
      };
      components = {
        inj-base = {
          depends  = [
            hsPkgs.base
            hsPkgs.inj
          ];
        };
      };
    }