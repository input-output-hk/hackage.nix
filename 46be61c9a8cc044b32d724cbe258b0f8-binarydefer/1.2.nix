{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "binarydefer";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Neil Mitchell";
        homepage = "";
        url = "";
        synopsis = "Binary serialization with deferred loading";
        description = "";
        buildType = "Simple";
      };
      components = {
        binarydefer = {
          depends  = [ hsPkgs.base ];
        };
      };
    }