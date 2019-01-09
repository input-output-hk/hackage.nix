{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "dnsrbl"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Holden <holden@pigscanfly.ca>";
      author = "Holden Karau <holden@pigscanfly.ca>";
      homepage = "http://www.pigscanfly.ca/~holden/dnsrbl/";
      url = "";
      synopsis = "Asynchronous DNS RBL lookup";
      description = "Asynchronous DNS RBL lookup";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.containers)
          (hsPkgs.hsdns)
          (hsPkgs.HUnit)
          ];
        };
      };
    }