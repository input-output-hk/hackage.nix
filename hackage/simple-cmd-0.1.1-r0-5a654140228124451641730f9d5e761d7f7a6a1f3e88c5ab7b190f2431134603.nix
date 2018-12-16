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
        name = "simple-cmd";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "";
      url = "";
      synopsis = "Simple String-based process commands";
      description = "Thin wrappers over System.Process (readProcess,\nreadProcessWithExitCode, and rawSystem). The idea is to provide\nsome simple common idioms for easy calling out to commands\nfrom programs.  For more advanced shell-scripting or streaming\nuse turtle, shelly, command, etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
        ];
      };
    };
  }