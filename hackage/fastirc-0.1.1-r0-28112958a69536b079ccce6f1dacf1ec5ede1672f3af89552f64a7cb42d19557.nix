{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "fastirc";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez";
      author = "Ertugrul Söylemez";
      homepage = "";
      url = "";
      synopsis = "Fast Internet Relay Chat (IRC) library";
      description = "Fast Internet Relay Chat (IRC) library.";
      buildType = "Simple";
    };
    components = {
      "fastirc" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.monadLib)
        ];
      };
      exes = {
        "test" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }