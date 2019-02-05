{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "fpe"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Galen Huntington";
      author = "";
      homepage = "https://github.com/galenhuntington/fpe#readme";
      url = "";
      synopsis = "Format-preserving encryption.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.integer-logarithms)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.integer-logarithms)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }