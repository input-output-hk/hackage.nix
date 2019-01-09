{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "resourcet"; version = "1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Deterministic allocation and freeing of scarce resources.";
      description = "See README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.mmorph)
          (hsPkgs.exceptions)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.resourcet)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.lifted-base)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }