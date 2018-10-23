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
        name = "path";
        version = "0.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "2015–2017 FP Complete";
      maintainer = "Chris Done <chrisdone@fpcomplete.com>";
      author = "Chris Done <chrisdone@fpcomplete.com>";
      homepage = "";
      url = "";
      synopsis = "Support for well-typed paths";
      description = "Support for well-typed paths.";
      buildType = "Simple";
    };
    components = {
      "path" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.path)
          ];
        };
        "validity-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-property)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.path)
            (hsPkgs.validity)
          ];
        };
      };
    };
  }