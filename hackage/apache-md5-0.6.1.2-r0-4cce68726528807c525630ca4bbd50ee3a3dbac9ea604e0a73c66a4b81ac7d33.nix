{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      pedantic = false;
      deepseq = false;
    };
    package = {
      specVersion = "1.9.1";
      identifier = {
        name = "apache-md5";
        version = "0.6.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, 2010, 2012-2015 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško <peter.trsko@gmail.com>";
      homepage = "https://github.com/trskop/apache-md5";
      url = "";
      synopsis = "Apache specific MD5 digest algorighm.";
      description = "Haskell implementation of Apache HTTP server specific MD5 digest algorithm\nthat uses OpenSSL @MD5()@ function.\n\nFor usage example see \"Data.Digest.ApacheMD5\" module or\n<https://github.com/trskop/apache-md5/blob/master/README.md GitHub README>.";
      buildType = "Custom";
    };
    components = {
      "apache-md5" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optional (flags.deepseq) (hsPkgs.deepseq);
        libs = [ (pkgs."crypto") ];
      };
      tests = {
        "apache-md5-unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.transformers)
            (hsPkgs.MonadRandom)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
          libs = [ (pkgs."crypto") ];
        };
      };
      benchmarks = {
        "apache-md5-benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.MonadRandom)
          ];
          libs = [ (pkgs."crypto") ];
        };
      };
    };
  }