{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      validity = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "path";
        version = "0.5.12";
      };
      license = "BSD-3-Clause";
      copyright = "2015–2016 FP Complete";
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
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.deepseq)
          (hsPkgs.aeson)
          (hsPkgs.hashable)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
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
          depends  = pkgs.lib.optionals (_flags.validity) [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.path)
            (hsPkgs.validity)
          ];
        };
      };
    };
  }