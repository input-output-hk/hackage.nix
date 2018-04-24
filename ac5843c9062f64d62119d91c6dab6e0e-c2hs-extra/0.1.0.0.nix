{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "c2hs-extra";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016-2017 Tao He";
        maintainer = "sighingnow@gmail.com";
        author = "Tao He";
        homepage = "http://github.com/sighingnow/mxnet-haskell#readme";
        url = "";
        synopsis = "Convenient marshallers for complicate C types.";
        description = "Convenient marshallers for complicate C types.";
        buildType = "Simple";
      };
      components = {
        c2hs-extra = {
          depends  = [ hsPkgs.base ];
          build-tools = [ hsPkgs.c2hs ];
        };
      };
    }