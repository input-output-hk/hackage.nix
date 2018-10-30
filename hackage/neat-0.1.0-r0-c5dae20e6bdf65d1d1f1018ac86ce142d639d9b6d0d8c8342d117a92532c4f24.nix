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
        name = "neat";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ajg";
      author = "Alvaro J. Genial";
      homepage = "https://github.com/ajg/neat";
      url = "";
      synopsis = "A Fast Retargetable Template Engine";
      description = "Static compilation of templates to various languages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "neat" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.neat)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }