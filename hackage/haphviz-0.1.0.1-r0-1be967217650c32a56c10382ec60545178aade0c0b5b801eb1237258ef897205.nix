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
        name = "haphviz";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "Tom Sydney Kerckhove 2015";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "";
      url = "";
      synopsis = "Graphviz code generation with Haskell";
      description = "Graphviz code generation with Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.mtl)
        ];
      };
    };
  }