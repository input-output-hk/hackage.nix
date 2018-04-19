{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "weighted-search";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "http://github.com/luqui/weighted-search";
        url = "";
        synopsis = "A weighted nondeterministic search monad";
        description = "";
        buildType = "Simple";
      };
      components = {
        weighted-search = {
          depends  = [ hsPkgs.base ];
        };
      };
    }