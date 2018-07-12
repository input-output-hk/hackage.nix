{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ruby-marshal";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "hello@filib.io";
        author = "Philip Cunningham";
        homepage = "https://github.com/filib/ruby-marshal";
        url = "";
        synopsis = "Parse a subset of Ruby objects serialised with Marshal.dump.";
        description = "Parse a subset of Ruby objects serialised with Marshal.dump.";
        buildType = "Simple";
      };
      components = {
        "ruby-marshal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.string-conv
            hsPkgs.mtl
            hsPkgs.vector
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.ruby-marshal
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.string-conv
              hsPkgs.vector
            ];
          };
        };
      };
    }