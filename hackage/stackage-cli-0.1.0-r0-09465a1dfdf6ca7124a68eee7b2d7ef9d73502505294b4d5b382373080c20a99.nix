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
        name = "stackage-cli";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "2015 FP Complete Corporation";
      maintainer = "danburton@fpcomplete.com";
      author = "Dan Burton";
      homepage = "https://www.stackage.org/package/stackage-cli";
      url = "";
      synopsis = "A CLI library for stackage commands";
      description = "A CLI library for stackage commands";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.conduit)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.transformers)
          (hsPkgs.split)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.exceptions)
          (hsPkgs.optparse-simple)
          (hsPkgs.either)
        ];
      };
      exes = {
        "stackage" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.stackage-cli)
          ];
        };
        "stk" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.stackage-cli)
          ];
        };
      };
    };
  }