{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "read-editor";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "Copyright (c) 2015 Pedro Tacla Yamada";
        maintainer = "tacla.yamada@gmail.com";
        author = "Pedro Tacla Yamada";
        homepage = "https://github.com/yamadapc/haskell-read-editor";
        url = "";
        synopsis = "Opens a temporary file on the system's EDITOR and returns the resulting edits";
        description = "See <https://github.com/yamadapc/haskell-read-editor> for more information";
        buildType = "Simple";
      };
      components = {
        "read-editor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.process
          ];
        };
        tests = {
          "hspec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.hspec
            ];
          };
        };
      };
    }