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
        name = "midair";
        version = "0.2.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Tom Murphy";
      author = "Tom Murphy";
      homepage = "";
      url = "";
      synopsis = "Hot-swappable FRP";
      description = "FRP for livecoding. You can hot-swap pieces or the whole of an\nFRP graph while it's running.\n\nSmall examples are in \"Midair.Examples\"\n\nThe API may change a lot in the future.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.safe)
        ];
      };
    };
  }