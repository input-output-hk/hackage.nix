{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-ruby";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Hardy Jones";
        maintainer = "jones3.hardy@gmail.com";
        author = "Hardy Jones";
        homepage = "https://github.com/joneshf/servant-ruby#readme";
        url = "";
        synopsis = "Generate a Ruby client from a Servant API with Net::HTTP.";
        description = "Generate a Ruby client from a Servant API with Net::HTTP.";
        buildType = "Simple";
      };
      components = {
        servant-ruby = {
          depends  = [
            hsPkgs.base
            hsPkgs.casing
            hsPkgs.lens
            hsPkgs.servant-foreign
            hsPkgs.text
          ];
        };
        tests = {
          doc-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.doctest
            ];
          };
        };
      };
    }