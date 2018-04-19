{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mysql-effect";
          version = "0.2.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tob@butter.sh";
        author = "Tobias Florek";
        homepage = "https://github.com/ibotty/mysql-effect";
        url = "";
        synopsis = "An extensible mysql effect using extensible-effects and mysql-simple";
        description = "Any help (especially documentation) is very welcome,";
        buildType = "Simple";
      };
      components = {
        mysql-effect = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.extensible-effects
            hsPkgs.mysql-simple
            hsPkgs.mysql
          ];
        };
      };
    }