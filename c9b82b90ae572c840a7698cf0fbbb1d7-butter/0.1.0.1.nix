{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "butter";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 SID.run";
      maintainer = "matt.p.ahrens@gmail.com";
      author = "Matthew Ahrens";
      homepage = "https://github.com/System-Indystress/Butter#readme";
      url = "";
      synopsis = "Monad Transformer for Asyncronous Message Passing";
      description = "Please see the README on Github at <https://github.com/System-Indystress/Butter#readme>";
      buildType = "Simple";
    };
    components = {
      "butter" = {
        depends  = [
          (hsPkgs.HUnit)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.forkable-monad)
          (hsPkgs.free)
          (hsPkgs.network-simple)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "Lang-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.butter)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.forkable-monad)
            (hsPkgs.free)
            (hsPkgs.network-simple)
            (hsPkgs.stm)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
        "Protocol-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.butter)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.forkable-monad)
            (hsPkgs.free)
            (hsPkgs.network-simple)
            (hsPkgs.stm)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }