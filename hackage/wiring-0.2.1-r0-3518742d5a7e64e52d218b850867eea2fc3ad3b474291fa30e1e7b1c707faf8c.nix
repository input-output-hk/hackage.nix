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
        name = "wiring";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "git@futurenotfound.com";
      author = "Sean Parsons";
      homepage = "http://github.com/seanparsons/wiring/";
      url = "";
      synopsis = "Wiring, promotion and demotion of types.";
      description = "This package provides the ability to join up or wire instances of types\n(such as ReaderT/WriterT/RWST) with some semi-automatic conversions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }