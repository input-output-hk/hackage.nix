{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test-hlint = false;
      test-doc-coverage = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dunai";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez, Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "Generalised reactive framework supporting classic, arrowized and monadic FRP.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "dunai" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "hlint" = {
          depends  = pkgs.lib.optionals (!(!flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
        "haddock-coverage" = {
          depends  = pkgs.lib.optionals (!(!flags.test-doc-coverage)) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.regex-posix)
          ];
        };
      };
    };
  }