{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "findhttp"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "2019 Jens Petersen";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/findhttp";
      url = "";
      synopsis = "List http/html files";
      description = "Tool for listing files (recursively) in an http directory";
      buildType = "Simple";
      };
    components = {
      exes = {
        "findhttp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.Glob)
            (hsPkgs.http-directory)
            (hsPkgs.simple-cmd-args)
            (hsPkgs.text)
            ];
          };
        };
      };
    }