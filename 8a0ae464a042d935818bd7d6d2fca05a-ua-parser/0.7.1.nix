{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      lib-werror = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ua-parser";
        version = "0.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ozgun.ataman@soostone.com";
      author = "Ozgun Ataman";
      homepage = "";
      url = "";
      synopsis = "A library for parsing User-Agent strings, official Haskell port of ua-parser";
      description = "Please refer to the git/github README on the project for example usage.";
      buildType = "Simple";
    };
    components = {
      "ua-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.pcre-light)
          (hsPkgs.yaml)
          (hsPkgs.aeson)
          (hsPkgs.data-default)
          (hsPkgs.file-embed)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.derive)
            (hsPkgs.HUnit)
            (hsPkgs.pcre-light)
            (hsPkgs.yaml)
            (hsPkgs.aeson)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.data-default)
            (hsPkgs.filepath)
            (hsPkgs.file-embed)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ua-parser)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.derive)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.yaml)
            (hsPkgs.filepath)
            (hsPkgs.aeson)
            (hsPkgs.pcre-light)
            (hsPkgs.file-embed)
            (hsPkgs.data-default)
          ];
        };
      };
    };
  }