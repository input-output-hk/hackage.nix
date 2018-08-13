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
        name = "quickcheck-property-comb";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "jfeltz@gmail.com";
      author = "John Feltz";
      homepage = "http://www.github.com/jfeltz/quickcheck-property-comb";
      url = "";
      synopsis = "Combinators for Quickcheck Property construction and Property diagnostics";
      description = "This project aims to reduce the pain of composing\ninvariants/properties, and the documenting of those invariants for determining the cause\nof failure. Additionally, it intends to provide effective diagnostics for\ninvariants with changing post-conditions, leading to faster cause-of-failure\ndiagnosis.";
      buildType = "Simple";
    };
    components = {
      "quickcheck-property-comb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.mtl)
        ];
      };
    };
  }