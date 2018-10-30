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
        name = "clr-bindings";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Tim Matthews";
      maintainer = "pepeiborra@gmail.com";
      author = "Tim Matthews";
      homepage = "https://gitlab.com/tim-m89/clr-haskell/tree/master/libs/clr-bindings";
      url = "";
      synopsis = "Glue between clr-host and clr-typed";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clr-typed)
          (hsPkgs.clr-host)
          (hsPkgs.clr-marshal)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.pipes)
        ];
      };
      tests = {
        "clr-bindings-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.clr-bindings)
          ];
        };
      };
    };
  }