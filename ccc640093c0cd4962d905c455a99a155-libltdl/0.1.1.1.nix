{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      examples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "libltdl";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Harvard University\n(c) 2016-2017 Drexel University";
      maintainer = "mainland@eecs.harvard.edu";
      author = "Geoffrey Mainland <mainland@drexel.edu>";
      homepage = "https://github.com/mainland/libltdl";
      url = "";
      synopsis = "FFI interface to libltdl";
      description = "This package provides an interface to GNU libtldl.";
      buildType = "Custom";
    };
    components = {
      "libltdl" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "sin" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.libltdl)
          ];
        };
      };
    };
  }