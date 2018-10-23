{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "tdoc";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "";
      url = "";
      synopsis = "TDoc is a typed document builder with support for (X)HTML";
      description = "";
      buildType = "Simple";
    };
    components = {
      "tdoc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.template-haskell)
          (hsPkgs.xhtml)
          (hsPkgs.bytestring)
        ];
      };
    };
  }