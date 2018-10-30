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
        name = "bamboo-plugin-highlight";
        version = "2009.6.9";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/bamboo-plugin-highlight/";
      url = "";
      synopsis = "bamboo-plugin-highlight";
      description = "A standard hack middleware that highlights source code automaticaly";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bamboo)
          (hsPkgs.hack)
          (hsPkgs.hack-contrib)
          (hsPkgs.bytestring)
          (hsPkgs.highlighting-kate)
          (hsPkgs.xhtml)
          (hsPkgs.hxt)
          (hsPkgs.mps)
        ];
      };
    };
  }