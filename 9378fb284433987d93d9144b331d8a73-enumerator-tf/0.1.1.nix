{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "enumerator-tf";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/enumerator/";
        url = "";
        synopsis = "Enumerator instances for monads-tf classes";
        description = "";
        buildType = "Simple";
      };
      components = {
        "enumerator-tf" = {
          depends  = [
            hsPkgs.base
            hsPkgs.monads-tf
            hsPkgs.enumerator
          ];
        };
      };
    }