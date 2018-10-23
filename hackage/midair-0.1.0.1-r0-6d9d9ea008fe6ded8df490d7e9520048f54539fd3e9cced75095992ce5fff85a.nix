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
        name = "midair";
        version = "0.1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "";
      author = "Tom Murphy";
      homepage = "";
      url = "";
      synopsis = "Hot-swappable FRP";
      description = "An FRP for livecoding, where you can hot-swap pieces or the whole of an\nFRP graph while the graph is running.\n\n\\\"stability: experimental\\\" is no joke!\n\nA small example is in \"Midair.Examples.HotswapCount\"";
      buildType = "Simple";
    };
    components = {
      "midair" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.safe)
        ];
      };
    };
  }