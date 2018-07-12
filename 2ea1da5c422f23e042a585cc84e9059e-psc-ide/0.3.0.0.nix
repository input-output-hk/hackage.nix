{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "psc-ide";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "2015 Christoph Hegemann";
        maintainer = "christoph.hegemann1337@gmail.com";
        author = "Christoph Hegemann";
        homepage = "http://github.com/kRITZCREEK/psc-ide";
        url = "";
        synopsis = "Language support for the PureScript programming language";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "psc-ide" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.either
            hsPkgs.filepath
            hsPkgs.http-client
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.regex-tdfa
            hsPkgs.text
            hsPkgs.wreq
          ];
        };
        exes = {
          "psc-ide" = {
            depends  = [
              hsPkgs.base
              hsPkgs.psc-ide
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.optparse-applicative
              hsPkgs.network
            ];
          };
          "psc-ide-server" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.directory
              hsPkgs.psc-ide
              hsPkgs.text
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.psc-ide
              hsPkgs.hspec
            ];
          };
        };
      };
    }