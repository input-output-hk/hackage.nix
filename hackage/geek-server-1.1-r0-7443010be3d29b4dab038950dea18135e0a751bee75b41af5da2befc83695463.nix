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
      specVersion = "1.6";
      identifier = {
        name = "geek-server";
        version = "1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/geek";
      url = "";
      synopsis = "Geek blog engine server";
      description = "A dynamic blog engine, customizable with standard web technology, i.e. HTML, CSS and Javascript (JSON)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.air)
          (hsPkgs.hack2-handler-snap-server)
          (hsPkgs.geek)
          (hsPkgs.data-default)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.pandoc)
          (hsPkgs.hack2)
        ];
      };
      exes = {
        "geek" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.air)
            (hsPkgs.hack2-handler-snap-server)
            (hsPkgs.geek)
            (hsPkgs.data-default)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.pandoc)
            (hsPkgs.hack2)
          ];
        };
      };
    };
  }