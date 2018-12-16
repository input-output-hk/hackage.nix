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
        name = "b9";
        version = "0.2.1";
      };
      license = "MIT";
      copyright = "2015 Sven Heyll <svh@posteo.de>";
      maintainer = "svh@posteo.de";
      author = "Sven Heyll <svh@posteo.de>";
      homepage = "https://github.com/sheyll/b9-vm-image-builder";
      url = "";
      synopsis = "A build tool and library for virtual machines.";
      description = "An experimental tool and library for creating, modifying, running\nand sharing virtual machines.\nThis tools focuses on speed, reliability and correctness.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ConfigFile)
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.pretty-show)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.semigroups)
          (hsPkgs.syb)
          (hsPkgs.template)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.yaml)
          (hsPkgs.bifunctors)
        ];
      };
      exes = {
        "b9c" = {
          depends = [
            (hsPkgs.b9)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.b9)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.yaml)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.semigroups)
          ];
        };
      };
    };
  }