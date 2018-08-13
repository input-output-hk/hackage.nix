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
        name = "servant-blaze";
        version = "0.4.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "Blaze-html support for servant";
      description = "";
      buildType = "Simple";
    };
    components = {
      "servant-blaze" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.http-media)
          (hsPkgs.blaze-html)
        ];
      };
    };
  }