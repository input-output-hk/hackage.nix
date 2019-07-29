{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "columnar"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris Dornan";
      maintainer = "chris@chrisdornan.com";
      author = "Chris Dornan";
      homepage = "https://github.com/cdornan/columnar#readme";
      url = "";
      synopsis = "A CSV toolkit based on cassava and enum-text";
      description = "Please see the README on GitHub at <https://github.com/cdornan/columnar#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.containers)
          (hsPkgs.enum-text)
          (hsPkgs.fmt)
          (hsPkgs.lens)
          (hsPkgs.possibly)
          (hsPkgs.rio)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      };
    }