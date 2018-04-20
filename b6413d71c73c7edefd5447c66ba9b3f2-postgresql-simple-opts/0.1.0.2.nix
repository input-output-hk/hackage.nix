{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "postgresql-simple-opts";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Jonathan Fischoff";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "https://github.com/jfischoff/postgresql-simple-opts#readme";
        url = "";
        synopsis = "An optparse-applicative parser for postgresql-simple's connection options";
        description = "This package exports a optparse-applicative parser and type for postgresql-simple's ConnectInfo and connection string.";
        buildType = "Simple";
      };
      components = {
        postgresql-simple-opts = {
          depends  = [
            hsPkgs.base
            hsPkgs.postgresql-simple
            hsPkgs.optparse-applicative
            hsPkgs.bytestring
            hsPkgs.optparse-generic
            hsPkgs.markdown-unlit
          ];
        };
        tests = {
          postgresql-simple-opts-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.postgresql-simple-opts
              hsPkgs.hspec
              hsPkgs.postgresql-simple
              hsPkgs.optparse-applicative
              hsPkgs.bytestring
            ];
          };
        };
      };
    }