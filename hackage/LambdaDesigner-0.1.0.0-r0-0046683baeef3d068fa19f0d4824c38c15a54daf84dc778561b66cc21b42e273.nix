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
        name = "LambdaDesigner";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Ulysses Popple";
      maintainer = "ulysses.popple@gmail.com";
      author = "Ulysses Popple";
      homepage = "https://github.com/ulyssesp/LambdaDesigner#readme";
      url = "";
      synopsis = "A type-safe EDSL for TouchDesigner written in Haskell.";
      description = "TouchDesigner nodes written as functions in Haskell and sent to TouchDesigner as json.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-trie)
          (hsPkgs.containers)
          (hsPkgs.hosc)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.matrix)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
      };
    };
  }