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
        name = "miniforth";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tenorbiel@gmail.com";
      author = "Tenor Biel";
      homepage = "";
      url = "";
      synopsis = "Miniature FORTH-like interpreter";
      description = "Miniature FORTH-like interpreter for muno";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl-compat)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.parsec)
          (hsPkgs.parsec3-numbers)
          (hsPkgs.MonadRandom)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "miniforth" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.lens)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.readline)
            (hsPkgs.miniforth)
          ];
        };
      };
    };
  }