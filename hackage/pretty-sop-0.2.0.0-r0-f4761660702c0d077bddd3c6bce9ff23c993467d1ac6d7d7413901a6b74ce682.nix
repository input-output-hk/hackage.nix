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
        name = "pretty-sop";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andres@well-typed.com";
      author = "Edsko de Vries <edsko@well-typed.com>, Andres Löh <andres@well-typed.com>";
      homepage = "";
      url = "";
      synopsis = "A generic pretty-printer using generics-sop";
      description = "This library contains a generic implementation of the 'prettyVal'\nfunction from the @<https://hackage.haskell.org/package/pretty-show pretty-show>@\npackage. Using the pretty printer, values can easily be rendered to\nstrings and HTML documents in a uniform way.\n\nThis library makes use of the\n@<https://hackage.haskell.org/package/generics-sop generics-sop>@ package and\nis an example of a generic function defined in the SOP style.\n";
      buildType = "Simple";
    };
    components = {
      "pretty-sop" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.generics-sop)
          (hsPkgs.pretty-show)
        ];
      };
    };
  }