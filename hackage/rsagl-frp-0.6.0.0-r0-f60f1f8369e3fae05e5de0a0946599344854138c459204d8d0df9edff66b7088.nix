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
      specVersion = "1.2";
      identifier = {
        name = "rsagl-frp";
        version = "0.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "The RogueStar Animation and Graphics Library: Functional Reactive Programming";
      description = "RSAGL, the RogueStar Animation and Graphics Library,\nwas specifically designed for a computer game called\nroguestar, but effort has been made to make it accessable\nto other projects that might benefit from it.\n\nThis package implements the RSAGL functional reactive\nprogramming architecture.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.rsagl-math)
          (hsPkgs.random)
          (hsPkgs.old-time)
          (hsPkgs.array)
          (hsPkgs.arrows)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.stm)
        ];
      };
    };
  }