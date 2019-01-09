{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "purescript-bridge"; version = "0.11.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "robert . klotzner A T gmx . at";
      author = "Robert Klotzner";
      homepage = "";
      url = "";
      synopsis = "Generate PureScript data types from Haskell data types";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.generic-deriving)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.purescript-bridge)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations-pretty-diff)
            ];
          };
        };
      };
    }