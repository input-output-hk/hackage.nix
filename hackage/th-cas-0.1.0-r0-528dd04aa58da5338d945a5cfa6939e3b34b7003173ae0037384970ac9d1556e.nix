{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "th-cas"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "https://github/junjihashimoto/th-cas";
      url = "";
      synopsis = "Compile-time CAS(Computer Algebra System)";
      description = "Compile-time CAS(Computer Algebra System)";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.template-haskell) ]; };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.th-cas)
            (hsPkgs.hspec)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }