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
      specVersion = "1.8";
      identifier = {
        name = "binary-ext";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Warlock <internalmike@gmail.com>";
      author = "Warlock <internalmike@gmail.com>";
      homepage = "https://github.com/A1-Triard/binary-ext";
      url = "";
      synopsis = "An alternate with typed errors for Data.Binary.Get monad from 'binary' library.";
      description = "An alternate with typed errors for Data.Binary.Get monad from 'binary' library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.binary)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.6") (hsPkgs.ghc-prim);
      };
      tests = {
        "qc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.random)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.containers)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.6") (hsPkgs.ghc-prim);
        };
        "read-write-file" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.binary)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.array)
            (hsPkgs.containers)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.6") (hsPkgs.ghc-prim);
        };
      };
    };
  }