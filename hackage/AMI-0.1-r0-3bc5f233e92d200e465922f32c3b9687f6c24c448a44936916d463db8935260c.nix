{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "AMI"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "http://redmine.iportnov.ru/projects/ami";
      url = "";
      synopsis = "Low-level bindings for Asterisk Manager Interface (AMI).";
      description = "This package provides simple low-level bindings for\nAsterisk Manager Interface (AMI).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.pureMD5)
          (hsPkgs.stm)
          ];
        };
      };
    }