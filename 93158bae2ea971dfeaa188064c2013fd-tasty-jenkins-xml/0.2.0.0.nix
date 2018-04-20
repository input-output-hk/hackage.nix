{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      pedantic = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-jenkins-xml";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Ixperta Solutions s.r.o.";
        maintainer = "ixcom-core@ixperta.com";
        author = "Ixcom Core Team";
        homepage = "https://github.com/IxpertaSolutions/tasty-jenkins-xml#readme";
        url = "";
        synopsis = "Render tasty output to both console and XML for Jenkins";
        description = "An extension of <https://hackage.haskell.org/package/tasty-ant-xml tasty-ant-xml> that is meant to be more practically useful with Jenkins CI.";
        buildType = "Simple";
      };
      components = {
        tasty-jenkins-xml = {
          depends  = [
            hsPkgs.base
            hsPkgs.tasty
            hsPkgs.tasty-ant-xml
          ];
        };
        tests = {
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.hlint
            ];
          };
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.hspec
              hsPkgs.io-capture
              hsPkgs.mockery
              hsPkgs.tasty-hunit
              hsPkgs.tasty-jenkins-xml
              hsPkgs.unix
            ];
          };
        };
      };
    }