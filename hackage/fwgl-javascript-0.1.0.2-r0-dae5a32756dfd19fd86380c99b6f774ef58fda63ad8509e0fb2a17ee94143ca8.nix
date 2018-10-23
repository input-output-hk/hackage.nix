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
        name = "fwgl-javascript";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ziocroc@gmail.com";
      author = "Luca \"ZioCrocifisso\" Prezzavento";
      homepage = "https://github.com/ZioCrocifisso/FWGL";
      url = "";
      synopsis = "FWGL GHCJS backend";
      description = "FWGL GHCJS backend";
      buildType = "Simple";
    };
    components = {
      "fwgl-javascript" = {
        depends  = [
          (hsPkgs.fwgl)
          (hsPkgs.Yampa)
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.ghcjs-base)
        ];
      };
    };
  }