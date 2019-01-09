{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "yaml-rpc-snap"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "http://redmine.iportnov.ru/projects/yaml-rpc";
      url = "";
      synopsis = "Snap server backend for yaml-rpc";
      description = "This package provides Snap-based server backend for yaml-rpc package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.yaml)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.snap)
          (hsPkgs.yaml-rpc)
          ];
        };
      };
    }