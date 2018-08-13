{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tickle";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 NICTA Limited";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/nicta/tickle";
      url = "";
      synopsis = "A port of @Data.Binary@";
      description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nA port of @Data.Binary@ that tightens up data types and parameterises error messages";
      buildType = "Custom";
    };
    components = {
      "tickle" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.bifunctors)
          (hsPkgs.lens)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.validation)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
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