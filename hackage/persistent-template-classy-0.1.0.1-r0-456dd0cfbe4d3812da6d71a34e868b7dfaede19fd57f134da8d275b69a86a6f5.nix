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
      specVersion = "1.12";
      identifier = {
        name = "persistent-template-classy";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Kostiantyn Rybnikov";
      maintainer = "k-bx@k-bx.com";
      author = "Kostiantyn Rybnikov";
      homepage = "https://github.com/k-bx/persistent-template-classy#readme";
      url = "";
      synopsis = "Generate classy lens field accessors for persistent models";
      description = "Generate classy lens field accessors for persistent models.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.persistent)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.persistent-template)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
        ];
      };
      tests = {
        "persistent-template-classy-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-template)
            (hsPkgs.persistent-template-classy)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
          ];
        };
      };
    };
  }