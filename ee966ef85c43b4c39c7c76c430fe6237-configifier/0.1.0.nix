{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      profiling = false;
      with-example = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "configifier";
        version = "0.1.0";
      };
      license = "AGPL-3.0-only";
      copyright = "zerobuzz.net";
      maintainer = "Matthias Fischmann <mf@zerobuzz.net>";
      author = "Matthias Fischmann <mf@zerobuzz.net>, Andres Löh <andres@well-typed.com>";
      homepage = "";
      url = "";
      synopsis = "parser for config files, shell variables, command line args.";
      description = "See <https://github.com/zerobuzz/configifier/blob/master/README.md README>";
      buildType = "Simple";
    };
    components = {
      "configifier" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.functor-infix)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.string-conversions)
          (hsPkgs.template-haskell)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "configifier-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.configifier)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.pretty-show)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.configifier)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.case-insensitive)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.mtl)
            (hsPkgs.pretty-show)
            (hsPkgs.QuickCheck)
            (hsPkgs.scientific)
            (hsPkgs.string-conversions)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }