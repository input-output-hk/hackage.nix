{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "codex";
          version = "0.4.0.6";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "alois.cochard@gmail.com";
        author = "Alois Cochard";
        homepage = "http://github.com/aloiscochard/codex";
        url = "";
        synopsis = "A ctags file generator for cabal project dependencies.";
        description = "This tool download and cache the source code of packages in your local hackage,\nit can then use this cache to generate `tags` files aggregating the sources of all the dependencies of your cabal/stack projects.\n\nYou basically do `codex update` in your project directory and you'll get a file\n(`codex.tags` by default, or `TAGS` when using emacs format) that you can use in your\nfavorite text editor.\n\nUsage overview can be found in the <http://github.com/aloiscochard/codex#codex README>.";
        buildType = "Simple";
      };
      components = {
        codex = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.Cabal
            hsPkgs.cryptohash
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.either
            hsPkgs.filepath
            hsPkgs.hackage-db
            hsPkgs.http-client
            hsPkgs.lens
            hsPkgs.machines
            hsPkgs.machines-directory
            hsPkgs.process
            hsPkgs.tar
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.yaml
            hsPkgs.wreq
            hsPkgs.zlib
          ];
        };
        exes = {
          codex = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.either
              hsPkgs.filepath
              hsPkgs.hackage-db
              hsPkgs.MissingH
              hsPkgs.monad-loops
              hsPkgs.network
              hsPkgs.process
              hsPkgs.transformers
              hsPkgs.wreq
              hsPkgs.yaml
              hsPkgs.codex
            ];
          };
        };
      };
    }