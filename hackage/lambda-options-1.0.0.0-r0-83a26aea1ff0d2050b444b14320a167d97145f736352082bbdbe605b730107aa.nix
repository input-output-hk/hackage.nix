{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "lambda-options"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Eding";
      author = "Thomas Eding";
      homepage = "https://github.com/thomaseding/lambda-options";
      url = "";
      synopsis = "Declarative command-line parser using type-driven pattern matching.";
      description = "This is a declarative command-line parser that uses type-driven pattern matching.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.funspection)
          (hsPkgs.mtl)
          (hsPkgs.read-bounded)
          ];
        };
      };
    }