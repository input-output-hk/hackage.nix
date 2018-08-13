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
      specVersion = "1.9.2";
      identifier = {
        name = "hops";
        version = "0.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anders.claesson@gmail.com";
      author = "Anders Claesson";
      homepage = "http://akc.is/hops";
      url = "";
      synopsis = "Handy Operations on Power Series";
      description = "HOPS is a DSL for power series and integer sequences.";
      buildType = "Custom";
    };
    components = {
      "hops" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.optparse-applicative)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.resourcet)
        ];
      };
      exes = {
        "hops" = {
          depends  = [
            (hsPkgs.hops)
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parallel)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.resourcet)
          ];
        };
      };
      tests = {
        "Props" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
          ];
        };
        "CLI-Props" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
          ];
        };
      };
    };
  }