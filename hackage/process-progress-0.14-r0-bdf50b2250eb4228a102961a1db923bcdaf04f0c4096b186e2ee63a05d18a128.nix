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
        name = "process-progress";
        version = "0.14";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox";
      homepage = "https://src.seereason.com/process-progress";
      url = "";
      synopsis = "Run a process and do reportsing on its progress.";
      description = "Function to run a process and wrappers to provide different\ntypes of feedback while it executes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.process-listlike)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.HUnit)
          (hsPkgs.ListLike)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }