{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "parco-attoparsec"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "athas@sigkill.dk";
      author = "Troels Henriksen";
      homepage = "";
      url = "";
      synopsis = "Generalised parser combinators - Attoparsec interface";
      description = "Parser monad instance for Attoparsec.  You can easily define this\nyourself, but it is provided here for convenience.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.mtl)
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.parco)
          ];
        };
      };
    }