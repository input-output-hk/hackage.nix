{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stackage-query"; version = "0.2.0"; };
      license = "MIT";
      copyright = "2017 Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/stackage-query";
      url = "";
      synopsis = "Tool for querying Stackage";
      description = "A commandline tool to query metadata of Stackage packages";
      buildType = "Simple";
      };
    components = {
      exes = {
        "stackage" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.hashable)
            (hsPkgs.http-directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.safe)
            (hsPkgs.semigroups)
            (hsPkgs.simple-cmd)
            (hsPkgs.simple-cmd-args)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }