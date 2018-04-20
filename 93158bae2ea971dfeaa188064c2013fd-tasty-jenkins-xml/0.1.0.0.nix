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
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Ixperta Solutions s.r.o.";
        maintainer = "ixcom-core@ixperta.com";
        author = "Ixcom Core Team";
        homepage = "https://github.com/IxpertaSolutions/tasty-jenkins-xml#readme";
        url = "";
        synopsis = "Render tasty output to XML for Jenkins (ingredient transformer)";
        description = "A tasty ingredient transformer (meaning consoleTestReporter or any other ingredient can run as well) to output test results in XML, using the Ant schema. This XML can be consumed by the Jenkins continuous integration framework.";
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