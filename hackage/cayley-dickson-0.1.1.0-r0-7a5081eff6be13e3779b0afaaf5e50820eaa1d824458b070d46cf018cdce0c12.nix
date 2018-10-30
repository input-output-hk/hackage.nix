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
        name = "cayley-dickson";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "Copyright (c) James M. Lawrence";
      maintainer = "James M. Lawrence <llmjjmll@gmail.com>";
      author = "James M. Lawrence";
      homepage = "";
      url = "";
      synopsis = "Complex numbers, quaternions, octonions, sedenions, etc.";
      description = "Cayley-Dickson constructions (complex numbers, quaternions,\noctonions, sedenions, etc.) over general scalars without\nlimit to the number of dimensions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
          ];
        };
      };
    };
  }