{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      base43 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "failure";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra, Michael Snoyman, Nicolas Pouillard";
      homepage = "http://www.haskell.org/haskellwiki/Failure";
      url = "";
      synopsis = "A simple type class for success/failure computations.";
      description = "A simple type class for success/failure computations.";
      buildType = "Simple";
    };
    components = {
      "failure" = {
        depends  = if _flags.base43
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.transformers)
          ];
      };
    };
  }