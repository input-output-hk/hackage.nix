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
      specVersion = "1.8";
      identifier = {
        name = "haquery";
        version = "0.1.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dobronszki@gmail.com";
      author = "Janos Dobronszki";
      homepage = "https://github.com/crufter/haquery";
      url = "";
      synopsis = "jQuery for Haskell.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.split)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.tagsoup)
        ];
      };
    };
  }