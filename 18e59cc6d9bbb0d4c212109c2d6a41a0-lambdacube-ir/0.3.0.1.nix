{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lambdacube-ir";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "csaba.hruska@gmail.com";
        author = "Csaba Hruska";
        homepage = "";
        url = "";
        synopsis = "LambdaCube 3D intermediate representation of 3D graphics pipelines";
        description = "LambdaCube 3D intermediate representation of 3D graphics pipelines";
        buildType = "Simple";
      };
      components = {
        lambdacube-ir = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.mtl
          ];
        };
      };
    }