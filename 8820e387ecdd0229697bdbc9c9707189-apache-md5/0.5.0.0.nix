{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      pedantic = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.1";
        identifier = {
          name = "apache-md5";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2009, 2010, 2012, 2013 Peter Trško";
        maintainer = "peter.trsko@gmail.com";
        author = "Peter Trško <peter.trsko@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Apache server specific MD5 digest algorighm.";
        description = "Haskell implementation of Apache HTTP server specific MD5 digest algorithm\nthat uses OpenSSL @MD5()@ function.";
        buildType = "Custom";
      };
      components = {
        apache-md5 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = [ pkgs.crypto ];
        };
        tests = {
          apache-md5-unit-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.transformers
              hsPkgs.MonadRandom
              hsPkgs.process
              hsPkgs.random
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
            libs = [ pkgs.crypto ];
          };
        };
        benchmarks = {
          apache-md5-benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.MonadRandom
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
            libs = [ pkgs.crypto ];
          };
        };
      };
    }