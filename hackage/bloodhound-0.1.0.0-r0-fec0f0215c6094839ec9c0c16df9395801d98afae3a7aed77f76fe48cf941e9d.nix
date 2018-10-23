{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bloodhound";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2014, Chris Allen";
      maintainer = "cma@bitemyapp.com";
      author = "Chris Allen";
      homepage = "github.com/bitemyapp/bloodhound";
      url = "";
      synopsis = "ElasticSearch client library for Haskell";
      description = "ElasticSearch made awesome for Haskell hackers";
      buildType = "Simple";
    };
    components = {
      "bloodhound" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.free)
          (hsPkgs.lens)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.io-streams)
          (hsPkgs.http-streams)
          (hsPkgs.HTTP)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.blaze-builder)
          (hsPkgs.failure)
          (hsPkgs.semigroups)
          (hsPkgs.containers)
          (hsPkgs.scientific)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bloodhound)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.derive)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.random)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
    };
  }