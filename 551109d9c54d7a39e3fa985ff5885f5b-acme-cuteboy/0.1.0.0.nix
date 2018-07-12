{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acme-cuteboy";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "chessai1996@gmail.com";
        author = "chessai";
        homepage = "https://github.com/chessai/acme-cuteboy";
        url = "";
        synopsis = "Maybe gives you a cute boy";
        description = "A package which exists solely to try and give\nthe user a cute boy. Executable and library are both\navailable.";
        buildType = "Simple";
      };
      components = {
        "acme-cuteboy" = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          "CuteBoy" = {
            depends  = [
              hsPkgs.base
              hsPkgs.acme-cuteboy
            ];
          };
        };
      };
    }