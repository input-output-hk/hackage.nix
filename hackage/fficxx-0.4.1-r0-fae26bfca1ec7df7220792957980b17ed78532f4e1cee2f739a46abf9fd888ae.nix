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
        version = "0.4.1";
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.errors)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.pureMD5)
          (hsPkgs.split)
          (hsPkgs.transformers)
          (hsPkgs.template)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }