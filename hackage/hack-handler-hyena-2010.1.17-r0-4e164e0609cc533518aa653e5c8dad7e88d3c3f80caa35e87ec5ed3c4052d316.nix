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
        name = "hack-handler-hyena";
        version = "2010.1.17";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/hack/tree/master";
      url = "";
      synopsis = "Hyena hack handler";
      description = "Hyena hack handler";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.hack)
          (hsPkgs.hyena)
          (hsPkgs.containers)
        ];
      };
    };
  }