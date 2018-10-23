{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "safe-access";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tho.feron@gmail.com";
      author = "Thomas Feron";
      homepage = "http://hub.darcs.net/thoferon/safe-access";
      url = "";
      synopsis = "A simple environment to control access to data";
      description = "This is a small capability-based interface to check legitimacy of accesses in different parts of the program depending on the context in which the data is accessed. See the README.md in the repository for a longer explanation and an example.";
      buildType = "Simple";
    };
    components = {
      "safe-access" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }