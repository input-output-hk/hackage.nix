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
      specVersion = "0";
      identifier = {
        name = "satchmo";
        version = "1.4";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Johannes Waldmann";
      homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/";
      url = "";
      synopsis = "SAT encoding monad";
      description = "Encoding for boolean and integral constraints into (QBF-)CNF-SAT.\nThe encoder is provided as a State monad (hence the \"mo\" in \"satchmo\").\nrequires a backend (e.g. satchmo-backends, satchmo-funsat)";
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
        ];
      };
    };
  }