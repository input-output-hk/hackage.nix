{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "ztar";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brandon Chinn <brandonchinn178@gmail.com>";
      author = "Brandon Chinn <brandonchinn178@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Creating and extracting compressed tar archives";
      description = "Creating and extracting compressed tar archives.";
      buildType = "Simple";
    };
    components = {
      "ztar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.tar)
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
      };
    };
  }