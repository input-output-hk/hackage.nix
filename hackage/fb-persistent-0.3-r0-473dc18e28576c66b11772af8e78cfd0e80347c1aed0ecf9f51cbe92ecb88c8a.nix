{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fb-persistent";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa";
      homepage = "https://github.com/meteficha/fb-persistent";
      url = "";
      synopsis = "Provides Persistent instances to Facebook types.";
      description = "This package provides orphan Persistent instances to Facebook\ntypes.  It is needed because @fb@ package should not depend on\n@persistent@, and neither should @persistent@ depend on @fb@.\nUse this @fb-persistent@ package instead of providing your own\norphan instances.";
      buildType = "Simple";
    };
    components = {
      "fb-persistent" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fb)
          (hsPkgs.persistent)
          (hsPkgs.cereal)
          (hsPkgs.time)
          (hsPkgs.text)
        ];
      };
    };
  }