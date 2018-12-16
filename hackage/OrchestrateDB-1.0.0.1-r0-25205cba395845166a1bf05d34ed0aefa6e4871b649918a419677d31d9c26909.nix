{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "OrchestrateDB";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015, Adrian Dawid";
      maintainer = "adriandwd@gmail.com";
      author = "Adrian Dawid";
      homepage = "https://github.com/dwd31415/Haskell-OrchestrateDB";
      url = "";
      synopsis = "Unofficial Haskell Client Library for the Orchestrate.io API";
      description = "An implementation of most of the functions of the Orchestrate.io REST API in Haskell.\nTo get started, see the documentation for the Orchestrate and  Orchestrate.REST module below.\nBecause this module does use 'Data.Aeson' for parsing and encoding JSON you might want to take a look at it's docs too.\nFor some working examples check out the \"examples/Test.hs\" file and the documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.lifted-base)
          (hsPkgs.aeson)
        ];
      };
      tests = {
        "tests-example1" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.bytestring)
            (hsPkgs.lifted-base)
            (hsPkgs.aeson)
            (hsPkgs.random)
          ];
        };
        "test-sherlock" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.bytestring)
            (hsPkgs.lifted-base)
            (hsPkgs.aeson)
            (hsPkgs.random)
          ];
        };
      };
    };
  }