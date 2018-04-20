{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "padKONTROL";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/padKONTROL";
        url = "";
        synopsis = "Controlling padKONTROL native mode";
        description = "";
        buildType = "Simple";
      };
      components = {
        padKONTROL = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmidi
            hsPkgs.minioperational
            hsPkgs.transformers
            hsPkgs.containers
          ];
        };
      };
    }