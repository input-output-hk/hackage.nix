{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "map-exts"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Elsen, Inc";
      maintainer = "cooper.charles.m@gmail.com";
      author = "Charles Cooper";
      homepage = "http://github.com/charles-cooper/map-exts#readme";
      url = "";
      synopsis = "Extensions to Data.Map";
      description = "Extensions to Data.Map";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      exes = {
        "example" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
        "titanic-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.cassava)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }