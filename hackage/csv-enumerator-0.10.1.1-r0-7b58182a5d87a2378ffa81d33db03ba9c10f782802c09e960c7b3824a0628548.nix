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
      specVersion = "1.2";
      identifier = {
        name = "csv-enumerator";
        version = "0.10.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ozgun Ataman <ozataman@gmail.com>";
      author = "Ozgun Ataman";
      homepage = "http://github.com/ozataman/csv-enumerator";
      url = "";
      synopsis = "A flexible, fast, enumerator-based CSV parser library for Haskell.";
      description = "CSV files are the de-facto standard in many situations involving data transfer,\nparticularly when dealing with enterprise application or disparate database\nsystems.\n\nWhile there are a number of CSV libraries in Haskell, at the time of this\nproject's start in 2010, there wasn't one that provided all of the following:\n\n* Full flexibility in quote characters, separators, input/output\n\n* Constant space operation\n\n* Robust parsing, correctness and error resiliency\n\n* Convenient interface that supports a variety of use cases\n\n* Fast operation\n\nThis library is an attempt to close these gaps.\n\nFor more documentation and examples, check out the README at:\n\n<http://github.com/ozataman/csv-enumerator>\n\nThe API is fairly well documented and I would encourage you to keep your\nhaddocks handy. If you run into problems, just email me or holler over at\n#haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-enumerator)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.enumerator)
          (hsPkgs.transformers)
          (hsPkgs.safe)
          (hsPkgs.unix-compat)
        ];
      };
    };
  }