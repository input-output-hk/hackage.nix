{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      small_base = false;
      tests = false;
      hpc = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "rdf4h";
        version = "1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Calvin Smith";
      maintainer = "Rob Stewart <robstewart@gmail.com>";
      author = "Calvin Smith";
      homepage = "https://github.com/robstewart57/rdf4h";
      url = "";
      synopsis = "A library for RDF processing in Haskell";
      description = "'RDF for Haskell' is a library for working with RDF in Haskell.\nAt present it includes parsers and serializers for RDF in the N-Triples\nand Turtle, and parsing support for RDF/XML. It provides abilities such as querying\nfor triples  containing a particular subject, predicate, or object, or\nselecting triples that satisfy an arbitrary predicate function.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.parsec)
          (hsPkgs.network)
          (hsPkgs.HTTP)
          (hsPkgs.hxt)
          (hsPkgs.MissingH)
          (hsPkgs.text)
        ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.containers)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "rdf4h" = {
          depends = [
            (hsPkgs.parsec)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.hxt)
            (hsPkgs.MissingH)
            (hsPkgs.containers)
            (hsPkgs.text)
          ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.bytestring)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
      tests = {
        "test-rdf4h" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HTTP)
            (hsPkgs.network)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.MissingH)
            (hsPkgs.bytestring)
            (hsPkgs.hxt)
            (hsPkgs.containers)
            (hsPkgs.text)
          ];
        };
      };
    };
  }