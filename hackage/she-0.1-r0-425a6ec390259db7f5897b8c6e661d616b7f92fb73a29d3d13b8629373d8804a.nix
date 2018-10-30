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
      specVersion = "1.6";
      identifier = {
        name = "she";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "conor@strictlypositive.org";
      author = "Conor McBride";
      homepage = "http://personal.cis.strath.ac.uk/~conor/pub/she";
      url = "";
      synopsis = "A Haskell preprocessor adding miscellaneous features";
      description = "The Strathclyde Haskell Enhancement is a somewhat inglorious bodge,\nequipping ghc with automatic lifting of types to kinds, pattern\nsynonyms, and some kit for higgledy-piggledy literate programming.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "she" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }