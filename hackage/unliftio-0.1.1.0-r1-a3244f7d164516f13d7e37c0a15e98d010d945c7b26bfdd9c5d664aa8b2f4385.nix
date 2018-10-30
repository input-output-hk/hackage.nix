{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "unliftio";
        version = "0.1.1.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.monad-logger)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.unliftio-core)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }