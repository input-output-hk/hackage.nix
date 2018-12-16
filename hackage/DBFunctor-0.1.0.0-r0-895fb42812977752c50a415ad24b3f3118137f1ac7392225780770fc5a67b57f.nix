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
        name = "DBFunctor";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Nikos Karagiannidis";
      maintainer = "nkarag@gmail.com";
      author = "Nikos Karagiannidis";
      homepage = "https://github.com/nkarag/DBFunctor#readme";
      url = "";
      synopsis = "DBFunctor - Functional Data Management =>  ETL/ELT Data Processing in Haskell";
      description = "Please see the README on Github at https://github.com/nkarag/haskell-DBFunctor";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MissingH)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.either)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "dbfunctor-example" = {
          depends = [
            (hsPkgs.DBFunctor)
            (hsPkgs.MissingH)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.either)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "dbfunctor-test" = {
          depends = [
            (hsPkgs.DBFunctor)
            (hsPkgs.MissingH)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.either)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }