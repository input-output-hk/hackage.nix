{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "language-sally"; version = "0.1.1.0"; };
      license = "ISC";
      copyright = "Galois, Inc. 2017";
      maintainer = "bjones@galois.com";
      author = "Benjamin Jones";
      homepage = "";
      url = "";
      synopsis = "AST and pretty printer for Sally";
      description = "AST and pretty printer for the Sally\n<https://github.com/SRI-CSL/sally> input language";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.ansi-wl-pprint)
          ];
        };
      };
    }