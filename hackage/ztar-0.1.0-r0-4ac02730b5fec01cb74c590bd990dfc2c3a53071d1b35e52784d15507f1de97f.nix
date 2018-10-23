{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "ztar";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brandon Chinn <brandonchinn178@gmail.com>";
      author = "Brandon Chinn <brandonchinn178@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Creating and extracting arbitrary archives";
      description = "Creating and extracting arbitrary archives.";
      buildType = "Simple";
    };
    components = {
      "ztar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.path)
          (hsPkgs.tar)
          (hsPkgs.zip)
          (hsPkgs.zlib)
        ];
      };
      tests = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.ztar)
          ];
        };
        "ztar-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.extra)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.ztar)
          ];
        };
      };
    };
  }