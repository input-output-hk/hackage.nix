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
        name = "gpcsets";
        version = "0.9.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bmccosar@yahoo.com";
      author = "Bruce H. McCosar";
      homepage = "";
      url = "";
      synopsis = "Generalized Pitch Class Sets for Haskell.";
      description = "An implementation of musical pitch class sets for Haskell.\nThis library is capable of handling standard 12-tone pitch\nclass sets and tone rows.  However, it is also capable of\nhandling GENERAL pitch class sets, which may come from\nalternative equal temperament systems.";
      buildType = "Simple";
    };
    components = {
      "gpcsets" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }