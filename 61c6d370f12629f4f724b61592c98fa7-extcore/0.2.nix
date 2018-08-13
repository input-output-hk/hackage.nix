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
      specVersion = "1.2.3";
      identifier = {
        name = "extcore";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tim Chevalier <chevalier@alum.wellesley.edu>";
      author = "Andrew Tolmach, Tim Chevalier, The GHC Team";
      homepage = "";
      url = "";
      synopsis = "Libraries for processing GHC Core";
      description = "Libraries for processing GHC Core";
      buildType = "Simple";
    };
    components = {
      "extcore" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.gt "6.8.2") (hsPkgs.syb);
      };
    };
  }