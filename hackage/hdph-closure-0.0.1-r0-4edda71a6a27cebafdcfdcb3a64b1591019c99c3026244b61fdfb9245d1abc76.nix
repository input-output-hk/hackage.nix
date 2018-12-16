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
      specVersion = "1.8";
      identifier = {
        name = "hdph-closure";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Patrick Maier <C.Patrick.Maier@gmail.com>";
      author = "Patrick Maier <C.Patrick.Maier@gmail.com>";
      homepage = "https://github.com/PatrickMaier/HdpH";
      url = "";
      synopsis = "Explicit closures in Haskell distributed parallel Haskell";
      description = "Explicit closures are serialisable representations of thunks.\nThis package exports the fully polymorphic explicit closures\nof HdpH (Haskell distributed parallel Haskell), for use\nby HdpH or other packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.template-haskell)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
        ];
      };
    };
  }