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
        name = "classy-prelude-conduit";
        version = "1.4.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/mono-traversable#readme";
      url = "";
      synopsis = "classy-prelude together with conduit functions";
      description = "See docs and README at <http://www.stackage.org/package/classy-prelude-conduit>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.classy-prelude)
          (hsPkgs.conduit)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.void)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.classy-prelude-conduit)
            (hsPkgs.conduit)
            (hsPkgs.hspec)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }