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
        name = "timestamp-subprocess-lines";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Eyal Lotem (2016)";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "https://github.com/Peaker/timestamp-subprocess-lines";
      url = "";
      synopsis = "Run a command and timestamp its stdout/stderr lines";
      description = "A small utility that allows executing other commands\nand prefix each line with a timestamp.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Timestamp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.process)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }