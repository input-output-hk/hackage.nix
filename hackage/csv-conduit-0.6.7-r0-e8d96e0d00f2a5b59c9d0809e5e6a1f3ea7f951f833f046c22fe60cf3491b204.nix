{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { bench = false; };
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "csv-conduit";
        version = "0.6.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ozgun Ataman <ozataman@gmail.com>";
      author = "Ozgun Ataman";
      homepage = "http://github.com/ozataman/csv-conduit";
      url = "";
      synopsis = "A flexible, fast, conduit-based CSV parser library for Haskell.";
      description = "CSV files are the de-facto standard in many situations involving data transfer,\nparticularly when dealing with enterprise application or disparate database\nsystems.\n\nWhile there are a number of CSV libraries in Haskell, at the time of this\nproject's start in 2010, there wasn't one that provided all of the following:\n\n* Full flexibility in quote characters, separators, input/output\n\n* Constant space operation\n\n* Robust parsing, correctness and error resiliency\n\n* Convenient interface that supports a variety of use cases\n\n* Fast operation\n\nThis library is an attempt to close these gaps. Please note that\nthis library started its life based on the enumerator package and\nhas recently been ported to work with conduits instead. In the\nprocess, it has been greatly simplified thanks to the modular nature\nof the conduits library.\n\nFollowing the port to conduits, the library has also gained the\nability to parameterize on the stream type and work both with\nByteString and Text.\n\nFor more documentation and examples, check out the README at:\n\n<http://github.com/ozataman/csv-conduit>\n";
      buildType = "Simple";
    };
    components = {
      "csv-conduit" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.monad-control)
          (hsPkgs.text)
          (hsPkgs.data-default)
          (hsPkgs.vector)
          (hsPkgs.array)
          (hsPkgs.blaze-builder)
          (hsPkgs.unordered-containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.mmorph)
          (hsPkgs.primitive)
          (hsPkgs.resourcet)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2.1") (hsPkgs.ghc-prim);
      };
      exes = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.csv-conduit)
            (hsPkgs.vector)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.csv-conduit)
            (hsPkgs.directory)
            (hsPkgs.vector)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
          ];
        };
      };
    };
  }