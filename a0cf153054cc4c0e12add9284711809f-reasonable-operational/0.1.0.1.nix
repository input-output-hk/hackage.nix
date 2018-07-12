{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "reasonable-operational";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tokiwoousaka";
        author = "tokiwoousaka";
        homepage = "https://github.com/tokiwoousaka/reasonable-operational";
        url = "";
        synopsis = "Just size Operational Monad implementation.";
        description = "Operational Monad implementation. It is more small but adequately.";
        buildType = "Simple";
      };
      components = {
        "reasonable-operational" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }