{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "reasonable-operational";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tokiwoousaka";
        author = "tokiwoousaka";
        homepage = "https://github.com/tokiwoousaka/reasonable-operational";
        url = "";
        synopsis = "library for takahashi method.";
        description = "create slide as takahashi method.";
        buildType = "Simple";
      };
      components = {
        reasonable-operational = {
          depends  = [ hsPkgs.base ];
        };
      };
    }