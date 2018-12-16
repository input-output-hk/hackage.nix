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
        name = "fold-debounce-conduit";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/fold-debounce-conduit";
      url = "";
      synopsis = "Regulate input traffic from conduit Source with Control.FoldDebounce";
      description = "Regulate input traffic from conduit Source with Control.FoldDebounce. See \"Data.Conduit.FoldDebounce\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.fold-debounce)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fold-debounce-conduit)
            (hsPkgs.stm)
            (hsPkgs.conduit)
            (hsPkgs.transformers)
            (hsPkgs.resourcet)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }