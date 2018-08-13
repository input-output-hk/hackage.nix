{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "more-containers";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2017 Matthieu Monsch";
      maintainer = "matthieu.monsch@gmail.com";
      author = "Matthieu Monsch";
      homepage = "https://github.com/mtth/more-containers#readme";
      url = "";
      synopsis = "A few more collections";
      description = "Please see the README on Github at https://github.com/mtth/more-containers";
      buildType = "Simple";
    };
    components = {
      "more-containers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "more-containers-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.more-containers)
          ];
        };
      };
    };
  }