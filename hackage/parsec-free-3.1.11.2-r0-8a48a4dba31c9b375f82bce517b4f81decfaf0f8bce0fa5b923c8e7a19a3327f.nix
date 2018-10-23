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
        name = "parsec-free";
        version = "3.1.11.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "https://github.com/jwiegley/parsec-free";
      url = "";
      synopsis = "Parsec API encoded as a deeply-embedded DSL, for debugging and analysis";
      description = "Parsec API encoded as a deeply-embedded DSL, for debugging and analysis";
      buildType = "Simple";
    };
    components = {
      "parsec-free" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.free)
          (hsPkgs.transformers)
          (hsPkgs.parsec)
        ];
      };
    };
  }