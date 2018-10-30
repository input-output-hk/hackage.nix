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
      specVersion = "0";
      identifier = {
        name = "sphinx";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Tupil";
      maintainer = "Chris Eidhof <ce+sphinx@tupil.com>";
      author = "Tupil";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to the Sphinx full-text searching deamon.";
      description = "Haskell bindings to the Sphinx full-text searching deamon. This\nmodule is heavily inspired by the php and python client.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.haskell98)
        ];
      };
    };
  }