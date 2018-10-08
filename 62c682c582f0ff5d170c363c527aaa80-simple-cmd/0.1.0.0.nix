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
      specVersion = "1.10";
      identifier = {
        name = "simple-cmd";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "";
      url = "";
      synopsis = "Simple String-based process commands";
      description = "Thin wrappers over the System.Process (readProcess,\nreadProcessWithExitCode, and rawSystem). The idea is just\nto provide some simple common idioms for easy calling out\nto commands from programs.  For proper shell-scripting\nplease use turtle, shelly, command, etc.";
      buildType = "Simple";
    };
    components = {
      "simple-cmd" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
        ];
      };
    };
  }