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
        name = "rio-orphans";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/commercialhaskell/rio#readme";
      url = "";
      synopsis = "Orphan instances for the RIO type in the rio package";
      description = "See README and Haddocks at <https://www.stackage.org/package/rio-orphans>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
          (hsPkgs.rio)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "rio-orphans-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.monad-control)
            (hsPkgs.resourcet)
            (hsPkgs.rio)
            (hsPkgs.rio-orphans)
            (hsPkgs.transformers-base)
          ];
        };
      };
    };
  }