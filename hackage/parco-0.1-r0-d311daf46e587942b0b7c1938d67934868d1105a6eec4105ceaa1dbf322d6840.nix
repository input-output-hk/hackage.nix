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
        name = "parco";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "athas@sigkill.dk";
      author = "Troels Henriksen";
      homepage = "";
      url = "";
      synopsis = "Generalised parser combinators";
      description = "General parser combinators that will work with any parser\ncombinator library.  At the moment, the contents of the library is\nnot particularly structured, and it is extended as I find it\nnecessary.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.base)
        ];
      };
    };
  }