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
      specVersion = "1.10";
      identifier = {
        name = "microlens-mtl";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Artyom <yom@artyom.me>";
      author = "Artyom";
      homepage = "http://github.com/aelve/microlens";
      url = "";
      synopsis = "microlens support for Reader/Writer/State from mtl";
      description = "This package contains functions (like 'view' or '+=') which work\non 'MonadReader', 'MonadWriter', and 'MonadState' from the mtl package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.microlens)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
        ];
      };
    };
  }