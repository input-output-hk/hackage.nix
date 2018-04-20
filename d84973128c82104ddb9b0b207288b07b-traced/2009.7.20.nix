{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "traced";
          version = "2009.7.20";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Augustsson";
        author = "Lennart Augustsson";
        homepage = "";
        url = "";
        synopsis = "Simple evaluation trace";
        description = "The module defines a type constructor Traced, which allows evaluation\nof values to be traced.  Instances for all numeric types make tracing\nnumeric evaluation especially easy.";
        buildType = "Simple";
      };
      components = {
        traced = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.containers
          ] ++ [ hsPkgs.base ];
        };
      };
    }