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
      specVersion = "1.10";
      identifier = {
        name = "system-error";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Consus <consus@ftml.net>";
      author = "Consus";
      homepage = "https://github.com/heroin-moose/system-error";
      url = "";
      synopsis = "Error reporting functions";
      description = "A family of functions to report errors on the standard error output.";
      buildType = "Simple";
    };
    components = {
      "system-error" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }