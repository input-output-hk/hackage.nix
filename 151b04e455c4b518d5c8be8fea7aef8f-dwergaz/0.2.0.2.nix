{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dwergaz";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2017-2018, Henry Till";
        maintainer = "henrytill@gmail.com";
        author = "Henry Till";
        homepage = "https://github.com/xngns/dwergaz";
        url = "";
        synopsis = "A minimal testing library";
        description = "dwergaz is a minimal testing library with no external dependencies.";
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