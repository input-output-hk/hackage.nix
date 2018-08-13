{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      dev = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "htaglib";
        version = "1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov@opmbx.org>";
      author = "Mark Karpov <markkarpov@opmbx.org>";
      homepage = "https://github.com/mrkkrp/htaglib";
      url = "";
      synopsis = "Bindings to TagLib, audio meta-data library";
      description = "Bindings to TagLib, audio meta-data library.";
      buildType = "Simple";
    };
    components = {
      "htaglib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
        libs = [ (pkgs."tag_c") ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.htaglib)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }