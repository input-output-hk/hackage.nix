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
        name = "baserock-schema";
        version = "0.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Daniel Firth";
      maintainer = "locallycompact@gmail.com";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://gitlab.com/locallycompact/baserock-schema#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.algebraic-graphs)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.docopt)
          (hsPkgs.errors)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.turtle)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "baserock" = {
          depends  = [
            (hsPkgs.algebraic-graphs)
            (hsPkgs.base)
            (hsPkgs.baserock-schema)
            (hsPkgs.bytestring)
            (hsPkgs.docopt)
            (hsPkgs.errors)
            (hsPkgs.mtl)
            (hsPkgs.profunctors)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.turtle)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "earthquake-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.algebraic-graphs)
            (hsPkgs.base)
            (hsPkgs.baserock-schema)
            (hsPkgs.bytestring)
            (hsPkgs.docopt)
            (hsPkgs.errors)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.profunctors)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.turtle)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }