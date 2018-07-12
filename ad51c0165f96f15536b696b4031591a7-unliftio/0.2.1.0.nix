{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unliftio";
          version = "0.2.1.0";
        };
        license = "MIT";
        copyright = "2017 FP Complete";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman, Francesco Mazzoli";
        homepage = "https://github.com/fpco/unliftio/tree/master/unliftio#readme";
        url = "";
        synopsis = "The MonadUnliftIO typeclass for unlifting monads to IO (batteries included)";
        description = "Please see the README.md file for details.";
        buildType = "Simple";
      };
      components = {
        "unliftio" = {
          depends  = [
            hsPkgs.async
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.stm
            hsPkgs.transformers
            hsPkgs.unliftio-core
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }