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
        version = "0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Tupil";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Tupil";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to the Sphinx full-text searching deamon.";
      description = "Haskell bindings to the Sphinx full-text searching deamon. This\nmodule is heavily inspired by the php and python client.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.haskell98)
          (hsPkgs.xml)
        ];
      };
    };
  }