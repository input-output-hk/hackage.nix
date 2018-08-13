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
      specVersion = "1.2";
      identifier = {
        name = "bindings";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "none";
      author = "Maurício C. Antunes";
      homepage = "";
      url = "";
      synopsis = "Low level bindings for foreign libraries\nfollowing community driven guidelines";
      description = "This package has been left in favor of a new design. See\n@bindings-common@ and others.";
      buildType = "Simple";
    };
    components = {
      "bindings" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }