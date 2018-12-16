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
        name = "universum";
        version = "0.1.12";
      };
      license = "MIT";
      copyright = "2016-2016 Stephen Diehl, 2016-2016 Serokell";
      maintainer = "hi@serokell.io";
      author = "Stephen Diehl";
      homepage = "https://github.com/serokell/universum";
      url = "";
      synopsis = "Custom prelude used in Serokell";
      description = "Custom prelude used in Serokell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          (hsPkgs.text-format)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }