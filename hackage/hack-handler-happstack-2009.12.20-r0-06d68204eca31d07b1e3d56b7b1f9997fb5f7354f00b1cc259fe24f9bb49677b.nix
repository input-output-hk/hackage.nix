{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hack-handler-happstack";
        version = "2009.12.20";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/hack-handler-happstack";
      url = "";
      synopsis = "Hack Happstack server handler";
      description = "Hack Happstack server handler";
      buildType = "Simple";
    };
    components = {
      "hack-handler-happstack" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cgi)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.hack)
          (hsPkgs.happstack-server)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }