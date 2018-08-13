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
        name = "conduit-tokenize-attoparsec";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/conduit-tokenize-attoparsec#readme";
      url = "";
      synopsis = "Conduits for tokenizing streams.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "conduit-tokenize-attoparsec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.text)
          (hsPkgs.resourcet)
        ];
      };
      exes = {
        "conduit-tokenize-attoparsec-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.conduit)
            (hsPkgs.conduit-tokenize-attoparsec)
            (hsPkgs.resourcet)
          ];
        };
      };
      tests = {
        "conduit-tokenize-attoparsec-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.conduit)
            (hsPkgs.conduit-tokenize-attoparsec)
            (hsPkgs.hspec)
            (hsPkgs.resourcet)
          ];
        };
      };
    };
  }