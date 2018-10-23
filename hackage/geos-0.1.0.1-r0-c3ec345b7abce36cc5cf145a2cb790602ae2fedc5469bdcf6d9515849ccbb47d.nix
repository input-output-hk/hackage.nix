{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.18.0";
      identifier = {
        name = "geos";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "pfrance@gmail.com";
      author = "Peter France";
      homepage = "";
      url = "";
      synopsis = "Bindings for GEOS.";
      description = "This is a Haskell binding to Geos, the open-source geometry library, which includes geometry types, predicate functions and other operations, spatially indexed geometries, and parsers for WKB and WKT formats.";
      buildType = "Simple";
    };
    components = {
      "geos" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
        ];
        libs = [ (pkgs."geos_c") ];
        frameworks = [ (pkgs."GEOS") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.mtl)
            (hsPkgs.geos)
            (hsPkgs.hspec)
            (hsPkgs.cassava)
          ];
          libs = [ (pkgs."geos_c") ];
          frameworks = [ (pkgs."GEOS") ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs)
          ];
        };
      };
    };
  }