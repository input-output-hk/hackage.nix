{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "improve";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "http://tomahawkins.org";
      url = "";
      synopsis = "An imperative, verifiable programming language for high assurance applications.";
      description = "ImProve is an imperative programming language for high assurance applications.\nImProve uses infinite state, unbounded model checking to verify programs adhere\nto specifications, which are written in the form of assertion statements.\nYices (required) is the backend SMT solver.";
      buildType = "Simple";
    };
    components = {
      "improve" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.yices)
        ];
      };
    };
  }