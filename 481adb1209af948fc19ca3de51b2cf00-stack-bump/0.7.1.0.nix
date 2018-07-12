{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stack-bump";
          version = "0.7.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tacla.yamada@gmail.com";
        author = "Pedro Tacla Yamada";
        homepage = "https://github.com/yamadapc/stack-bump";
        url = "";
        synopsis = "Dead simple version bumping for hpack packages";
        description = "Runs tests and build with stack, then bumps the package with a tagged commit.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "stack-bump" = {
            depends  = [
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.yaml
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.strict
              hsPkgs.async
              hsPkgs.ansi-terminal
              hsPkgs.Glob
              hsPkgs.filepath
            ];
          };
        };
        tests = {
          "hspec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.yaml
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.strict
              hsPkgs.async
              hsPkgs.ansi-terminal
              hsPkgs.Glob
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }