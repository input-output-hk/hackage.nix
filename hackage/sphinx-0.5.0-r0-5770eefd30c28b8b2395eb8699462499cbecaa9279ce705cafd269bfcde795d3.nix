{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      version-1-1-beta = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "sphinx";
        version = "0.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Chris Eidhof <ce+sphinx@tupil.com>, Greg Weber";
      homepage = "https://github.com/gregwebs/haskell-sphinx-client";
      url = "";
      synopsis = "Haskell bindings to the Sphinx full-text searching deamon.";
      description = "Haskell bindings to the Sphinx full-text searching deamon. Compatible with sphinx version 1.1";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.xml)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }