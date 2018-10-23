{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "codex";
        version = "0.0.1.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "alois.cochard@gmail.com";
      author = "Alois Cochard";
      homepage = "http://github.com/aloiscochard/codex";
      url = "";
      synopsis = "Code Explorer for Cabal";
      description = "This tool download and cache the source code of packages in your local hackage,\nhe can then use this cache to generate `tags` files aggregating the sources of all the dependencies of your cabal projects.\n\nYou basically do `codex update` in your cabal project directory and you'll get a `codex.tags` file\nthat you can use in your favorite text editor.";
      buildType = "Simple";
    };
    components = {
      "codex" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.download-curl)
          (hsPkgs.filepath)
          (hsPkgs.hackage-db)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.tar)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "codex" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hackage-db)
            (hsPkgs.MissingH)
            (hsPkgs.mtl)
            (hsPkgs.monad-loops)
            (hsPkgs.codex)
          ];
        };
      };
    };
  }