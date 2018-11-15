{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      build-examples = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hedgehog-fn";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Isaac Elliott";
      homepage = "https://github.com/qfpl/hedgehog-fn";
      url = "";
      synopsis = "Function generation for `hedgehog`";
      description = "Generating shrinkable, showable functions with `hedgehog`. See\n`Hedgehog.Function` for example usages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
          (hsPkgs.hedgehog)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.hedgehog-fn)
          ];
        };
      };
    };
  }