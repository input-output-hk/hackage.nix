{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hfann";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Olivier Boudry 2008";
        maintainer = "Olivier Boudry <olivier.boudry@gmail.com>";
        author = "Olivier Boudry";
        homepage = "http://code.haskell.org/~oboudry/hfann/";
        url = "";
        synopsis = "Haskell binding to the FANN library";
        description = "hfann is a Haskell binding to the Fast Artificial Neural\nNetwork (FANN) library <http://leenissen.dk/fann/>. It\nprovides functions to easily create, train, test and use\nArtificial Neural Networks.";
        buildType = "Simple";
      };
      components = {
        hfann = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.doublefann ];
        };
        exes = {
          HFANNTest = {
            depends  = [ hsPkgs.base ];
            libs = [ pkgs.doublefann ];
          };
        };
      };
    }