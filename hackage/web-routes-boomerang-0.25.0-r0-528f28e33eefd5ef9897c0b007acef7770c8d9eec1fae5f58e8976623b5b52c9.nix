{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "web-routes-boomerang"; version = "0.25.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "";
      url = "";
      synopsis = "Library for maintaining correctness and composability of URLs within an application.";
      description = "This module add support for creating url parsers/printers using a single unified grammar specification";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.boomerang)
          (hsPkgs.mtl)
          (hsPkgs.web-routes)
          ];
        };
      };
    }