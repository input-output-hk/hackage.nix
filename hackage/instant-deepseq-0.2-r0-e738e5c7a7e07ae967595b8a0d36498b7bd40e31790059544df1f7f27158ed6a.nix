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
      specVersion = "1.18";
      identifier = {
        name = "instant-deepseq";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015";
      maintainer = "renzo@carbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/instant-deepseq";
      url = "";
      synopsis = "Generic NFData instances through instant-generics";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.deepseq)
          (hsPkgs.base)
          (hsPkgs.instant-generics)
        ];
      };
    };
  }