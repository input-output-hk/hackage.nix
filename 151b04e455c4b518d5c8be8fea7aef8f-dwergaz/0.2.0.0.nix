{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dwergaz";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2017, Henry Till";
        maintainer = "henrytill@gmail.com";
        author = "Henry Till";
        homepage = "https://github.com/xngns/dwergaz";
        url = "";
        synopsis = "A minimal testing library";
        description = "A minimal testing library";
        buildType = "Simple";
      };
      components = {
        "dwergaz" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.dwergaz
            ];
          };
        };
      };
    }