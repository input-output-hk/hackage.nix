{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "codex"; version = "0.0.1.7"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "alois.cochard@gmail.com";
      author = "Alois Cochard";
      homepage = "http://github.com/aloiscochard/codex";
      url = "";
      synopsis = "A ctags file generator for cabal project dependencies.";
      description = "This tool download and cache the source code of packages in your local hackage,\nit can then use this cache to generate `tags` files aggregating the sources of all the dependencies of your cabal projects.\n\nYou basically do `codex update` in your cabal project directory and you'll get a `codex.tags` file\nthat you can use in your favorite text editor.\n\nUsage overview can be found in the <http://github.com/aloiscochard/codex#codex README>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.download-curl)
          (hsPkgs.either)
          (hsPkgs.filepath)
          (hsPkgs.hackage-db)
          (hsPkgs.MissingH)
          (hsPkgs.process)
          (hsPkgs.tar)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.zlib)
          ];
        };
      exes = {
        "codex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.filepath)
            (hsPkgs.hackage-db)
            (hsPkgs.MissingH)
            (hsPkgs.monad-loops)
            (hsPkgs.transformers)
            (hsPkgs.yaml)
            (hsPkgs.codex)
            ];
          };
        };
      };
    }