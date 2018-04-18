{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hw-diagnostics";
          version = "0.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-diagnostics#readme";
        url = "";
        synopsis = "Conduits for tokenizing streams.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-diagnostics = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          hw-diagnostics-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.hw-diagnostics
            ];
          };
        };
        tests = {
          hw-diagnostics-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }