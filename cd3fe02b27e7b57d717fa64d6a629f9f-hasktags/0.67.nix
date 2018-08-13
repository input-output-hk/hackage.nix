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
        name = "hasktags";
        version = "0.67";
      };
      license = "BSD-3-Clause";
      copyright = "The University Court of the University of Glasgow";
      maintainer = "libraries@haskell.org";
      author = "The GHC Team";
      homepage = "";
      url = "";
      synopsis = "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs";
      description = "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hasktags" = {
          depends  = [
            (hsPkgs.haskell98)
            (hsPkgs.base)
          ];
        };
      };
    };
  }