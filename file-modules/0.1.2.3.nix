{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "file-modules";
          version = "0.1.2.3";
        };
        license = "MIT";
        copyright = "Copyright (c) Pedro Tacla Yamada 2015";
        maintainer = "tacla.yamada@gmail.com";
        author = "Pedro Tacla Yamada";
        homepage = "https://github.com/yamadapc/stack-run-auto";
        url = "";
        synopsis = "Takes a Haskell source-code file and outputs its modules.";
        description = "Uses @haskell-src-exts@ to parse module imports and follows links\n. to local modules in order to build a list of module dependencies.";
        buildType = "Simple";
      };
      components = {
        file-modules = {
          depends  = [
            hsPkgs.MissingH
            hsPkgs.async
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.haskell-src-exts
            hsPkgs.regex-compat
            hsPkgs.regex-pcre
          ];
        };
        exes = {
          file-modules = {
            depends  = [
              hsPkgs.MissingH
              hsPkgs.async
              hsPkgs.base
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskell-src-exts
              hsPkgs.regex-compat
              hsPkgs.regex-pcre
            ];
          };
        };
      };
    }