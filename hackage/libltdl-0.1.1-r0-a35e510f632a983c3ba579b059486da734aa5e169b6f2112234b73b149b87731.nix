{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "libltdl";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Harvard University\n(c) 2016 Drexel University";
      maintainer = "mainland@eecs.harvard.edu";
      author = "Geoffrey Mainland <mainland#drexel.edu>";
      homepage = "https://github.com/mainland/libltdl";
      url = "";
      synopsis = "FFI interface to libltdl";
      description = "This package provides an interface to GNU libtldl.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      exes = {
        "sin" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.libltdl)
          ];
        };
      };
    };
  }