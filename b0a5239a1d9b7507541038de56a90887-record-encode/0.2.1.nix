{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "record-encode";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Marco Zocca";
      maintainer = "ocramz fripost org";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/record-encode";
      url = "";
      synopsis = "Generic encoding of records";
      description = "Generic encoding of records. It currently provides a single, polymorphic function to encode sum types (i.e. categorical variables) as one-hot vectors.";
      buildType = "Simple";
    };
    components = {
      "record-encode" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.generics-sop)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.record-encode)
            (hsPkgs.generics-sop)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }