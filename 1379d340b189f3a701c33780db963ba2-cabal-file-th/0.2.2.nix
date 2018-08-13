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
      specVersion = "1.9";
      identifier = {
        name = "cabal-file-th";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nkpart@gmail.com";
      author = "Nick Partridge";
      homepage = "http://github.com/nkpart/cabal-file-th";
      url = "";
      synopsis = "Template Haskell expressions for reading fields from a project's cabal file.";
      description = "Template Haskell expressions for reading fields from a project's cabal file.";
      buildType = "Simple";
    };
    components = {
      "cabal-file-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.directory)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cabal-file-th)
          ];
        };
      };
    };
  }