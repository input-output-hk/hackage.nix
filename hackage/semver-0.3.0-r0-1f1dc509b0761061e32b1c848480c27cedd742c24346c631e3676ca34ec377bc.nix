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
        name = "semver";
        version = "0.3.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2014 Brendan Hay";
      maintainer = "brendan.g.hay@gmail.com";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/semver";
      url = "";
      synopsis = "Representation, manipulation, and de/serialisation of Semantic Versions.";
      description = "Representation, manipulation, and de/serialisation of a Version type\nfollowing the Semantic Versioning specification.\n\nFor more information see: <http://semver.org>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.text)
        ];
      };
      tests = {
        "semver-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.semver)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
          ];
        };
      };
      benchmarks = {
        "semver-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.semver)
            (hsPkgs.text)
          ];
        };
      };
    };
  }