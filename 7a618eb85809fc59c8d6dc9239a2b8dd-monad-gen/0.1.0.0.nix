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
        name = "monad-gen";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "danny.gratzer@gmail.com";
      author = "Danny Gratzer";
      homepage = "";
      url = "";
      synopsis = "A simple monad for generating fresh integers";
      description = "It's a common in Haskell programs to thread some state\nthrough the application using @State@ or some other similar pattern.\nThis package simply wraps @State@ and uses it to generate fresh values,\nany @Enum@ value will work.";
      buildType = "Simple";
    };
    components = {
      "monad-gen" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }