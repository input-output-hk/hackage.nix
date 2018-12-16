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
        name = "streaming";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming";
      url = "";
      synopsis = "an elementary streaming prelude and a general monad transformer for streaming applications.";
      description = "@Streaming.Prelude@ exports an elementary streaming prelude; @Streaming@ exports a free monad transformer\noptimized for streaming applications and replacing @FreeT@. See the\n<https://hackage.haskell.org/package/streaming#readme readme> below\nfor an explanation. Elementary usage can be divined from the ghci examples in\n@Streaming.Prelude@\n\nNote also the\n<https://hackage.haskell.org/package/streaming-bytestring streaming bytestring>\nand\n<https://hackage.haskell.org/package/streaming-utils streaming utils>\npackages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.mmorph)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.random)
        ];
      };
    };
  }