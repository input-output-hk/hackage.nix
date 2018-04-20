{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "indentation-parsec";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ömer Sinan Ağacan <omeragacan@gmail.com>\nAleksey Kliger <aleksey@lambdageek.org>";
        author = "Michael D. Adams <http://michaeldadams.org/>";
        homepage = "https://bitbucket.org/adamsmd/indentation";
        url = "";
        synopsis = "Indentation sensitive parsing combinators for Parsec";
        description = "Indentation sensitive parsing combinators for Parsec\n\nSee\n\n__Michael D. Adams and Ömer S. Ağacan__.\nIndentation-sensitive parsing for Parsec.\nIn /Proceedings of the 2014 ACM SIGPLAN Symposium on Haskell/,\nHaskell ’14, pages 121–132.\nACM, New York, NY, USA, September 2014. ISBN 978-1-4503-3041-1.\n<http://dx.doi.org/10.1145/2633357.2633369 doi:10.1145/2633357.2633369>.\n\nThis package provides indentation combinators for\nParsec.  For Trifecta, install\nindentation-trifecta.  For backward compatability\nor to install both, install indentation.";
        buildType = "Simple";
      };
      components = {
        indentation-parsec = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.indentation-core
            hsPkgs.parsec
          ];
        };
        tests = {
          test-indentation = {
            depends  = [
              hsPkgs.parsec
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.indentation-parsec
            ];
          };
        };
      };
    }