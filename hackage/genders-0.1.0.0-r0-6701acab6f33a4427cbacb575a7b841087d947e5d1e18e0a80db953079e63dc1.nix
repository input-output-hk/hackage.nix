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
      specVersion = "1.10";
      identifier = {
        name = "genders";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "© 2014 Tweag I/O Limited";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Bindings to libgenders.";
      description = "Genders data identifies nodes in a cluster of machines and allows\nassociating attributes with each node. libgenders allows reading and\nquerying genders data from a file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.vector)
        ];
        libs = [ (pkgs."genders") ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.genders)
            (hsPkgs.hspec)
            (hsPkgs.network)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }