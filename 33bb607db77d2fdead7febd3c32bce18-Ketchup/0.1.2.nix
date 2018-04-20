{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Ketchup";
          version = "0.1.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "zikyky@gmail.com";
        author = "Alessandro Gatti";
        homepage = "https://github.com/Hamcha/Ketchup";
        url = "";
        synopsis = "A super small web framework for those who don't like big and fancy codebases";
        description = "";
        buildType = "Simple";
      };
      components = {
        Ketchup = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.network
            hsPkgs.regex-posix
          ];
        };
      };
    }