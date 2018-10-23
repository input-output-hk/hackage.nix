{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { devel = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pipes-key-value-csv";
        version = "0.4.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Marcin Mrotek, 2015";
      maintainer = "marcin.jan.mrotek@gmail.com";
      author = "Marcin Mrotek";
      homepage = "https://github.com/marcinmrotek/key-value-csv";
      url = "";
      synopsis = "Streaming processing of CSV files preceded by key-value pairs.";
      description = "Nonstandard CSV files, with the table preceded by a header consisting of key-value pairs are often the output format of varius test equipment, such as digital oscilloscopes.";
      buildType = "Simple";
    };
    components = {
      "pipes-key-value-csv" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.pipes)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-group)
          (hsPkgs.pipes-parse)
          (hsPkgs.pipes-safe)
          (hsPkgs.pipes-text)
          (hsPkgs.reflection)
          (hsPkgs.semigroupoids)
          (hsPkgs.text)
          (hsPkgs.vinyl)
          (hsPkgs.vinyl-utils)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
      };
      tests = {
        "test-kvc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.contravariant)
            (hsPkgs.pipes-key-value-csv)
            (hsPkgs.data-default-class)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
            (hsPkgs.pipes)
            (hsPkgs.pipes-text)
            (hsPkgs.reflection)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vinyl)
            (hsPkgs.vinyl-utils)
          ];
        };
      };
    };
  }