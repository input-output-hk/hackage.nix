{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "web-routes-happstack";
        version = "0.23.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "";
      url = "";
      synopsis = "Adds support for using web-routes with Happstack";
      description = "";
      buildType = "Simple";
    };
    components = {
      "web-routes-happstack" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.happstack-server)
          (hsPkgs.text)
          (hsPkgs.web-routes)
        ];
      };
    };
  }