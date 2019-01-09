{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Spock-worker"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "(c) 2014 Alexander Thiemann";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "http://github.com/agrafix/Spock-worker";
      url = "";
      synopsis = "Background workers for Spock";
      description = "Adds a background-job queue to Spock";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Spock)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lifted-base)
          (hsPkgs.mtl)
          (hsPkgs.errors)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "SpockWorkerTests" = {
          depends = [
            (hsPkgs.HTF)
            (hsPkgs.Spock-worker)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }