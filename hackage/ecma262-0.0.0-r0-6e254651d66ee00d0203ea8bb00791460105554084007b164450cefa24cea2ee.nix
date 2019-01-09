{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ecma262"; version = "0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "fabian.bergmark@gmail.com";
      author = "Fabian Bergmark";
      homepage = "https://github.com/fabianbergmark/ECMA-262";
      url = "";
      synopsis = "A ECMA-262 interpreter library";
      description = "A library for iterpreting ECMA-262 code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.lens)
          (hsPkgs.parsec)
          (hsPkgs.safe)
          (hsPkgs.transformers)
          ];
        };
      exes = { "ecma262" = { depends = [ (hsPkgs.base) (hsPkgs.ecma262) ]; }; };
      };
    }