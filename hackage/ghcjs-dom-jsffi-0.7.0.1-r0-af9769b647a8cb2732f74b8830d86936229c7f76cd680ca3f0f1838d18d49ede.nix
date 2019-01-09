{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "ghcjs-dom-jsffi"; version = "0.7.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "DOM library using JSFFI and GHCJS";
      description = "Documentent Object Model (DOM) functions that work with\nGHCJS.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.ghcjs-base)
          (hsPkgs.ghcjs-prim)
          (hsPkgs.ghc-prim)
          ];
        };
      };
    }