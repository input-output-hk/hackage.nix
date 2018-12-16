{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Validation";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Tony Morris, Nick Partridge";
      maintainer = "Tony Morris, Nick Partridge";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>, Nick Partridge";
      homepage = "https://github.com/tonymorris/validation";
      url = "";
      synopsis = "A data-type like Either but with an accumulating Applicative";
      description = "A data-type like Either but with an accumulating Applicative";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.bifunctors)
        ];
      };
    };
  }