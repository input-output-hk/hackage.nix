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
      specVersion = "1.6";
      identifier = {
        name = "newtype-th";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Sloan <mgsloan at gmail>";
      author = "Michael Sloan";
      homepage = "http://github.com/mgsloan/newtype-th";
      url = "";
      synopsis = "Provides a template haskell deriver for use with Control.Newtype.";
      description = "Provides a template haskell based mechanism for\nderiving instances of djahandarie's Control.Newtype class.";
      buildType = "Simple";
    };
    components = {
      "newtype-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.newtype)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }