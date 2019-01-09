{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "draw-poker"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "its.out.of.tune.this.my.music@gmail.com";
      author = "tune";
      homepage = "http://github.com/name/project";
      url = "";
      synopsis = "playing draw poker";
      description = "for http://tune.hateblo.jp/entry/2015/05/12/023112";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.random-shuffle) (hsPkgs.safe) ];
        };
      exes = {
        "draw-poker" = { depends = [ (hsPkgs.base) (hsPkgs.draw-poker) ]; };
        };
      tests = {
        "draw-poker-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.draw-poker) ];
          };
        };
      };
    }