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
      specVersion = "1.6";
      identifier = {
        name = "newtype-th";
        version = "0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "Michael Sloan 2011";
      maintainer = "Michael Sloan <mgsloan at gmail>";
      author = "Michael Sloan";
      homepage = "http://github.com/mgsloan/newtype-th";
      url = "";
      synopsis = "A template haskell deriver to create Control.Newtype instances.";
      description = "Provides a template haskell based mechanism for\nderiving instances of djahandarie's Control.Newtype class.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.newtype)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }