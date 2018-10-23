{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "hops";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anders.claesson@gmail.com";
      author = "Anders Claesson";
      homepage = "http://github.com/akc/hops";
      url = "";
      synopsis = "Handy Operations on Power Series";
      description = "HOPS is a DSL for power series and integer sequences.";
      buildType = "Custom";
    };
    components = {
      exes = {
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
            (hsPkgs.text)
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