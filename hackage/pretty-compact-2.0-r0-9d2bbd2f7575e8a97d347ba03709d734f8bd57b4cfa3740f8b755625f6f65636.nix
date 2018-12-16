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
      specVersion = "1.8";
      identifier = {
        name = "pretty-compact";
        version = "2.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Jean-Philippe Bernardy <jeanphilippe.bernardy@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Pretty-printing library";
      description = "This package contains a pretty-printing library, a set of API's\nthat provides a way to easily print out text in a consistent\nformat of your choosing. This is useful for compilers and related\ntools.\n\nThis library produces more compact outputs than both\nWadler-Leijen or Hughes-PJ algorithms, at the expense of computational ressources.\nThe core API is based on Hughes-PJ, but some combinators of the Leijen API are implemented as well.";
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