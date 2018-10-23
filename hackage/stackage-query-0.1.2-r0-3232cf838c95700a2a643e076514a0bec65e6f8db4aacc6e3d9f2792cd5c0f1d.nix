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
        name = "stackage-query";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "2017 Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/stackage-query";
      url = "";
      synopsis = "Stackage package query";
      description = "Tool to query package metadata in Stackage";
      buildType = "Simple";
    };
    components = {
      exes = {
        "stackage" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.stackage-types)
            (hsPkgs.text)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }