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
        name = "fficxx";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "";
      url = "";
      synopsis = "automatic C++ binding generation";
      description = "automatic C++ binding generation";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.HStringTemplate)
          (hsPkgs.split)
          (hsPkgs.process)
          (hsPkgs.transformers)
          (hsPkgs.template-haskell)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.lens)
          (hsPkgs.either)
          (hsPkgs.errors)
          (hsPkgs.bytestring)
          (hsPkgs.pureMD5)
          (hsPkgs.Cabal)
        ];
      };
    };
  }