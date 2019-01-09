{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hardware-edsl"; version = "0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mararon@chalmers.se";
      author = "Markus Aronsson <mararon@chalmers.se>";
      homepage = "https://github.com/markus-git/hardware-edsl";
      url = "";
      synopsis = "Deep embedding of hardware descriptions with code generation.";
      description = "Deep embedding of hardware descriptions with code generation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.constraints)
          (hsPkgs.syntactic)
          (hsPkgs.operational-alacarte)
          (hsPkgs.language-vhdl)
          ];
        };
      };
    }