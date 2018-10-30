{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildexample = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pretty-simple";
        version = "1.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/pretty-simple";
      url = "";
      synopsis = "pretty printer for data types with a 'Show' instance.";
      description = "Please see <https://github.com/cdepillabout/pretty-simple#readme README.md>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ansi-terminal)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.mono-traversable)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "pretty-simple-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pretty-simple)
          ];
        };
        "pretty-simple-json-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.pretty-simple)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "pretty-simple-doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
          ];
        };
      };
      benchmarks = {
        "pretty-simple-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.pretty-simple)
          ];
        };
      };
    };
  }