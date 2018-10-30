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
      specVersion = "1.10";
      identifier = {
        name = "psi";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2016 Sharif Olorin";
      maintainer = "sio@tesser.org";
      author = "Sharif Olorin";
      homepage = "";
      url = "";
      synopsis = "Yet another custom Prelude.";
      description = "`psi`/`ψ` is just another custom Haskell\nprelude. It is inspired by Ambiata's p and has\nthe same focus on promoting use of safe\nconstructs and avoidance of partial functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.semigroups)
          (hsPkgs.text)
        ];
      };
    };
  }