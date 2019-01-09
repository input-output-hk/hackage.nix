{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unliftio-core"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "2017 FP Complete";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Francesco Mazzoli";
      homepage = "https://github.com/fpco/unliftio/tree/master/unliftio-core#readme";
      url = "";
      synopsis = "The MonadUnliftIO typeclass for unlifting monads to IO";
      description = "Please see the documentation and README at <https://www.stackage.org/package/unliftio-core>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.transformers) ]; };
      };
    }