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
      specVersion = "1.14";
      identifier = {
        name = "open-witness";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Ashley Yakeley <ashley@semantic.org>";
      maintainer = "Ashley Yakeley <ashley@semantic.org>";
      author = "Ashley Yakeley <ashley@semantic.org>";
      homepage = "https://github.com/AshleyYakeley/open-witness";
      url = "";
      synopsis = "open witnesses";
      description = "Open witnesses are witnesses that can witness to any type. However, they cannot be constructed, they can only be generated in the IO monad.\nSee the paper /Witnesses and Open Witnesses/ (<http://semantic.org/stuff/Open-Witnesses.pdf>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.hashable)
          (hsPkgs.witness)
        ];
      };
    };
  }