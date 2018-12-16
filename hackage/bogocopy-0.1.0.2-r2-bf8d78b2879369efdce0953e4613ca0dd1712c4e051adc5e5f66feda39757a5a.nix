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
        name = "bogocopy";
        version = "0.1.0.2";
      };
      license = "BSD-2-Clause";
      copyright = "phlummox 2016";
      maintainer = "phlummox2@gmail.com";
      author = "phlummox";
      homepage = "https://github.com/phlummox/bogocopy";
      url = "";
      synopsis = "Copy a directory tree, making zero-size sparse copies of big files.";
      description = "Copies a directory tree, preserving permissions and modification times, but\nmaking zero-size sparse copies of big files. See the README file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bogocopy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.filemanip)
            (hsPkgs.optparse-applicative)
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }