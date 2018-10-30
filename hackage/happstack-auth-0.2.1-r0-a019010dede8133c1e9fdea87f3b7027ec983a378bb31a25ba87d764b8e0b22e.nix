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
      specVersion = "1.8";
      identifier = {
        name = "happstack-auth";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mail@n-sch.de";
      author = "Nils Schweinsberg";
      homepage = "http://n-sch.de/happstack-auth";
      url = "";
      synopsis = "A Happstack Authentication Suite";
      description = "An easy way to to implement user authentication for\nHappstack web applications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.old-time)
          (hsPkgs.happstack)
          (hsPkgs.happstack-state)
          (hsPkgs.happstack-server)
          (hsPkgs.happstack-ixset)
          (hsPkgs.happstack-data)
          (hsPkgs.convertible)
        ];
      };
    };
  }