{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "tapioca"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cfraz89@gmail.com";
      author = "Christopher Fraser";
      homepage = "";
      url = "";
      synopsis = "A tasty enhancement to cassava for easy csv exporting";
      description = "tapioca is a package that builds on cassava, to provide a simpler, more succinct method of mapping records to and from csv data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.cassava)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.errors)
          (hsPkgs.lens)
          ];
        };
      tests = {
        "tapioca-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.tapioca)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }