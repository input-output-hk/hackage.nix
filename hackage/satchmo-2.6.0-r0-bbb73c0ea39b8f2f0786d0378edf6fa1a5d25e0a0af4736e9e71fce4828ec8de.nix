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
        name = "satchmo";
        version = "2.6.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Pepe Iborra, Johannes Waldmann, Alexander Bau";
      homepage = "<https://github.com/jwaldmann/satchmo>";
      url = "";
      synopsis = "SAT encoding monad";
      description = "Encoding for boolean and integral constraints into CNF-SAT.\nThe encoder is provided as a State monad\n(hence the \"mo\" in \"satchmo\").\nThis package depends on minisat-haskell-bindings, see\n<https://github.com/niklasso/minisat-haskell-bindings>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.minisat)
        ];
      };
    };
  }