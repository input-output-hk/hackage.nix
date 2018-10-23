{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "classy-prelude";
        version = "0.5.8";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/classy-prelude";
      url = "";
      synopsis = "A typeclass-based Prelude.";
      description = "Focuses on using common typeclasses when possible, and creating new ones to avoid name clashing. Exposes many recommended datastructures (Map, ByteString, etc) directly without requiring long import lists and qualified modules.";
      buildType = "Simple";
    };
    components = {
      "classy-prelude" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.system-filepath)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.classy-prelude)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }