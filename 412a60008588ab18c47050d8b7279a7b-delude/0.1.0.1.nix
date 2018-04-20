{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "delude";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "sgschlesinger@gmail.com";
        author = "Samuel Schlesinger";
        homepage = "";
        url = "";
        synopsis = "Generalized the Prelude more functionally.";
        description = "Generalized Prelude";
        buildType = "Simple";
      };
      components = {
        delude = {
          depends  = [ hsPkgs.base ];
        };
      };
    }