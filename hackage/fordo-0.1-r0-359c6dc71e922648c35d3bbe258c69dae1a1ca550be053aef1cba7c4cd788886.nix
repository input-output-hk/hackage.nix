{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "fordo";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "songcq@gmail.com";
      author = "Lars, Chengqi Song";
      homepage = "";
      url = "";
      synopsis = "Run a command on files with magic substituion support (sequencing and regexp)";
      description = "fordo is a command line tool works like \\\"find ... -exec ...\\\" with the support for magic braces.\nFor example an empty pair of braces will be replaced to file name, with \\\"100\\\" inside it will be replaced to 100, 101, 102... for each file, and with \\\"s\\/bmp\$\\/jpg\\\" inside it will invoke a sed command on the file names to change ext name from bmp to jpg.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fordo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }