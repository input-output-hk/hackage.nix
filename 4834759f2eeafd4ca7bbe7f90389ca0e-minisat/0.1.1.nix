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
        name = "minisat";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A Haskell bundle of the Minisat SAT solver";
      description = "";
      buildType = "Simple";
    };
    components = {
      "minisat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.zlib);
        libs = [
          (pkgs."stdc++")
        ] ++ pkgs.lib.optional (!system.isWindows) (pkgs."z");
      };
    };
  }