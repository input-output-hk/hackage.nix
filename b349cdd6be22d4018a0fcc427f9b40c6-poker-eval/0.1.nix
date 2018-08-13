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
        name = "poker-eval";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "lemmih@gmail.com";
      author = "David Himmelstrup";
      homepage = "";
      url = "";
      synopsis = "Binding to libpoker-eval";
      description = "Performance oriented functions for judging poker hands\nand related tasks.";
      buildType = "Simple";
    };
    components = {
      "poker-eval" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.array)
          (hsPkgs.vector)
        ];
        libs = [ (pkgs.poker-eval) ];
      };
    };
  }