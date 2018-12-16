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
      specVersion = "1.2";
      identifier = {
        name = "hoopl";
        version = "3.7.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nr@cs.tufts.edu";
      author = "Norman Ramsey, João Dias, and Simon Peyton Jones";
      homepage = "";
      url = "";
      synopsis = "A library to support dataflow analysis and optimization";
      description = "Higher-order optimization library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }