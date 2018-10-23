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
        name = "derive-storable-plugin";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mateusz.p.kloczko@gmail.com";
      author = "Mateusz Kłoczko";
      homepage = "https://www.github.com/mkloczko/derive-storable-plugin/";
      url = "";
      synopsis = "GHC core plugin supporting the derive-storable package.";
      description = "The package helps derive-storable package in forcing compile time evaluation of\nsizes, alignments and offsets.";
      buildType = "Simple";
    };
    components = {
      "derive-storable-plugin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ghci)
          (hsPkgs.derive-storable)
        ];
      };
    };
  }