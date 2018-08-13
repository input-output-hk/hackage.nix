{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "improve";
        version = "0.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "http://github.com/tomahawkins/improve/wiki/ImProve";
      url = "";
      synopsis = "An imperative, verifiable programming language for high assurance applications.";
      description = "ImProve is an imperative programming language for high assurance applications.\nImProve uses infinite state, unbounded model checking to verify programs adhere\nto specifications.  Yices (required) is the backend SMT solver.\nImProve compiles to C, Ada, Simulink, and Modelica.";
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