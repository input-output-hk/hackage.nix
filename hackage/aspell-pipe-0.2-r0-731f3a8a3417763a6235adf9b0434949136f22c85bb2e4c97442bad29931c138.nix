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
        name = "aspell-pipe";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Jonathan Daugherty";
      maintainer = "jtd@galois.com";
      author = "Jonathan Daugherty";
      homepage = "";
      url = "";
      synopsis = "Pipe-based interface to the Aspell program";
      description = "A pipe-based interface to the Aspell program (no\ndynamic linking required).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.text)
        ];
      };
    };
  }