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
        name = "clr-inline";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Jose Iborra";
      maintainer = "pepeiborra@gmail.com";
      author = "Jose Iborra";
      homepage = "https://gitlab.com/tim-m89/clr-haskell";
      url = "";
      synopsis = "Quasiquoters for inline C# and F#";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "clr-inline" = {
        depends  = [
          (hsPkgs.text)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.case-insensitive)
          (hsPkgs.clr-host)
          (hsPkgs.clr-marshal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.here)
          (hsPkgs.lens)
          (hsPkgs.parsec)
          (hsPkgs.pipes)
          (hsPkgs.process)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.temporary)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.case-insensitive)
            (hsPkgs.clr-host)
            (hsPkgs.clr-marshal)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            (hsPkgs.here)
            (hsPkgs.lens)
            (hsPkgs.parsec)
            (hsPkgs.pipes)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.template-haskell)
            (hsPkgs.temporary)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
          ];
        };
      };
      benchmarks = {
        "benchmark" = {
          depends  = [
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.case-insensitive)
            (hsPkgs.clr-host)
            (hsPkgs.clr-marshal)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            (hsPkgs.here)
            (hsPkgs.lens)
            (hsPkgs.parsec)
            (hsPkgs.pipes)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.template-haskell)
            (hsPkgs.temporary)
            (hsPkgs.transformers)
            (hsPkgs.base)
            (hsPkgs.clr-inline)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }