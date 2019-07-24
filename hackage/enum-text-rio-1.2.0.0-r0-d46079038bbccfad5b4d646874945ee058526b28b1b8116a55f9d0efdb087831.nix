{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "enum-text-rio"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris Dornan";
      maintainer = "chris@chrisdornan.com";
      author = "Chris Dornan";
      homepage = "https://github.com/cdornan/enum-text-rio#readme";
      url = "";
      synopsis = "Making fmt available with rio";
      description = "Please see the README on GitHub at <https://github.com/cdornan/enum-text-rio#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.enum-text)
          (hsPkgs.fmt)
          (hsPkgs.rio)
          (hsPkgs.text)
          ];
        };
      exes = {
        "demo-enum-text-rio" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.enum-text)
            (hsPkgs.enum-text-rio)
            (hsPkgs.fmt)
            (hsPkgs.rio)
            (hsPkgs.text)
            ];
          };
        };
      };
    }