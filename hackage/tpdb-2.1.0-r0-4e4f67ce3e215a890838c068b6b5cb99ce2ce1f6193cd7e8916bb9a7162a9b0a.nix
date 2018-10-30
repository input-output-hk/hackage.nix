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
      specVersion = "1.8";
      identifier = {
        name = "tpdb";
        version = "2.1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Alexander Bau, Johannes Waldmann";
      homepage = "https://github.com/jwaldmann/haskell-tpdb";
      url = "";
      synopsis = "Data Type for Rewriting Systems";
      description = "The package defines data types and parsers for rewriting systems\nand termination proofs,\nas used in the Termination Competitions.\nFor syntax and semantics specification,\nsee <http://www.termination-portal.org/wiki/TPDB>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.prettyprinter)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.xml-hamlet)
          (hsPkgs.xml-conduit)
          (hsPkgs.data-default)
          (hsPkgs.parsec)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
        ];
      };
      exes = {
        "plain2xtc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
            (hsPkgs.bytestring)
          ];
        };
      };
      tests = {
        "XML" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
          ];
        };
        "TRS" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
            (hsPkgs.text)
          ];
        };
        "TRS_02" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
            (hsPkgs.text)
          ];
        };
        "SRS" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
            (hsPkgs.text)
          ];
        };
        "Speed" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
            (hsPkgs.text)
            (hsPkgs.pretty)
          ];
        };
        "Attributes" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
            (hsPkgs.text)
            (hsPkgs.pretty)
          ];
        };
        "XML-Theory" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
          ];
        };
        "CPF-AC" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
          ];
        };
        "Parse-AC" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
          ];
        };
        "read-cpf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
          ];
        };
        "read-complex" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
          ];
        };
        "read-large" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
          ];
        };
      };
    };
  }