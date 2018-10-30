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
        name = "process-extras";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "David Lazar <lazar6@illinois.edu>";
      author = "David Lazar, Bas van Dijk";
      homepage = "https://github.com/davidlazar/process-extras";
      url = "";
      synopsis = "Process extras";
      description = "Extra functionality for the Process library\n<http://hackage.haskell.org/package/process>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.deepseq)
        ];
      };
    };
  }