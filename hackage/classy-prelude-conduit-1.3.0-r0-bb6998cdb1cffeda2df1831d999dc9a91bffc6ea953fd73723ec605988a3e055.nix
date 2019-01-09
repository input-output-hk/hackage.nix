{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "classy-prelude-conduit"; version = "1.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/mono-traversable";
      url = "";
      synopsis = "classy-prelude together with conduit functions";
      description = "classy-prelude together with conduit functions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.classy-prelude)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
          (hsPkgs.void)
          (hsPkgs.bytestring)
          (hsPkgs.conduit-combinators)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.classy-prelude-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
            (hsPkgs.conduit)
            ];
          };
        };
      };
    }