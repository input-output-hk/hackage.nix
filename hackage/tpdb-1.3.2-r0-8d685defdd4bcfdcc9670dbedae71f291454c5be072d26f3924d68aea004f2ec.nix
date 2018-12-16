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
        version = "1.3.2";
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
        depends = [
          (hsPkgs.base)
          (hsPkgs.hxt)
          (hsPkgs.wl-pprint-text)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.HaXml)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs.transformers);
      };
      tests = {
        "XML" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
          ];
        };
        "TRS" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
            (hsPkgs.bytestring)
          ];
        };
        "TRS_02" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
            (hsPkgs.bytestring)
          ];
        };
        "SRS" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
            (hsPkgs.bytestring)
          ];
        };
        "Speed" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
            (hsPkgs.HaXml)
            (hsPkgs.bytestring)
            (hsPkgs.pretty)
          ];
        };
        "Attributes" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tpdb)
            (hsPkgs.HaXml)
            (hsPkgs.bytestring)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }