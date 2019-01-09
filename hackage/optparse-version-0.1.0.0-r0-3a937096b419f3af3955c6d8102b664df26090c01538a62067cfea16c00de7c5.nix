{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "optparse-version"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 David Smith";
      maintainer = "shmish111@gmail.com";
      author = "David Smith";
      homepage = "https://github.com/shmish111/optparse-version";
      url = "";
      synopsis = "";
      description = "Simple Option to display version text file";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.optparse-applicative)
          (hsPkgs.file-embed)
          ];
        };
      exes = {
        "optparse-version-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-version)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      };
    }