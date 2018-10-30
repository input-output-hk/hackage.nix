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
        name = "katydid";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Walter Schulze";
      maintainer = "awalterschulze@gmail.com";
      author = "Walter Schulze";
      homepage = "https://github.com/katydid/katydid-haskell";
      url = "";
      synopsis = "A haskell implementation of Katydid";
      description = "A haskell implementation of Katydid\n\nThis includes:\n\n- Relapse, a validation Language\n- Parsers for JSON, XML and an abstraction for trees\n\nYou should only need the following modules:\n\n- The Relapse module is used for validation.\n- The Json and XML modules are used to create Json and XML trees that can be validated.\n\nIf you want to implement your own parser then you can look at the Parsers module\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.json)
          (hsPkgs.hxt)
          (hsPkgs.regex-tdfa)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.deepseq)
        ];
      };
      exes = {
        "katydid-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.katydid)
            (hsPkgs.mtl)
          ];
        };
      };
      tests = {
        "katydid-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.katydid)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.json)
            (hsPkgs.hxt)
            (hsPkgs.HUnit)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty)
          ];
        };
      };
      benchmarks = {
        "criterion-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.katydid)
            (hsPkgs.criterion)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.hxt)
            (hsPkgs.deepseq)
            (hsPkgs.text)
          ];
        };
      };
    };
  }