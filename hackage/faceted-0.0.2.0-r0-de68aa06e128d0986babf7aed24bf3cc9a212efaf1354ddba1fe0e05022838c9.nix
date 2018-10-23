{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "faceted";
        version = "0.0.2.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "kenn@kennknowles.com";
      author = "Kenneth Knowles, Thomas Austin";
      homepage = "http://github.com/haskell-faceted/haskell-faceted";
      url = "";
      synopsis = "Faceted computation for dynamic information flow security";
      description = "This library provides faceted values and computations for\nenforcing secure information flow.\n\nA faceted value represents many value simultaneously, depending\non who is observing, and prevents any observer from viewing\nconfidential information that they do not have privileges\nto access.";
      buildType = "Simple";
    };
    components = {
      "faceted" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.free)
        ];
      };
    };
  }