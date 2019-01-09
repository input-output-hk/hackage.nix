{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "pregame"; version = "0.1.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "https://github.com/jxv";
      author = "Joe Vargas";
      homepage = "https://github.com/jxv/pregame";
      url = "";
      synopsis = "Prelude counterpart";
      description = "Excessive Prelude styled imports.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.parallel)
          (hsPkgs.safe)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.tuple)
          (hsPkgs.vector)
          ];
        };
      };
    }