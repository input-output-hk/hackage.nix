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
      specVersion = "1.10";
      identifier = {
        name = "tickle";
        version = "0.0.8";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016-2018 Commonwealth Scientific and Industrial Research Organisation (CSIRO)     ABN 41 687 119 230.";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/tickle";
      url = "";
      synopsis = "A port of @Data.Binary@";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nA port of @Data.Binary@ that tightens up data types and parameterises error messages";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.validation)
          (hsPkgs.filepath)
          (hsPkgs.papa)
        ];
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }