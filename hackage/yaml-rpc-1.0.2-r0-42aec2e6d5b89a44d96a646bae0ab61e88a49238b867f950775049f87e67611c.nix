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
        name = "yaml-rpc";
        version = "1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "http://redmine.iportnov.ru/projects/yaml-rpc";
      url = "";
      synopsis = "Simple library for network (HTTP REST-like) YAML RPC";
      description = "This library aimed to organize remote procedure call (RPC)\nover HTTP protocol, using YAML as data serialization format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.aeson)
          (hsPkgs.yaml)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
          (hsPkgs.wreq)
          (hsPkgs.http-types)
          (hsPkgs.http-client)
          (hsPkgs.lens)
        ];
      };
    };
  }