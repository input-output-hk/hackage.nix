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
        name = "type-level-integers";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Moritz Schulte";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Schulte";
      homepage = "https://github.com/mtesseract/type-level-integers";
      url = "";
      synopsis = "Provides integers lifted to the type level";
      description = "This packages provides type level integers together with\ntype families for basic arithmetic.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      tests = {
        "type-level-integers-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.type-level-integers)
          ];
        };
      };
    };
  }