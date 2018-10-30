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
        name = "Spock-worker";
        version = "0.2.0.0";
      };
      license = "Apache-2.0";
      copyright = "(c) 2014 Alexander Thiemann";
      maintainer = "mail@agrafix.net";
      author = "Alexander Thiemann <mail@agrafix.net>";
      homepage = "http://github.com/agrafix/Spock-worker";
      url = "";
      synopsis = "Background workers for Spock";
      description = "Adds a background-job queue to Spock";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Spock)
          (hsPkgs.HTF)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.stm)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.lifted-base)
        ];
      };
      tests = {
        "SpockWorkerTests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Spock)
            (hsPkgs.HTF)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.stm)
            (hsPkgs.vector)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.lifted-base)
          ];
        };
      };
    };
  }