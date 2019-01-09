{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "slick"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 Chris Penner";
      maintainer = "example@example.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/slick#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/ChrisPenner/slick#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.mustache)
          (hsPkgs.pandoc)
          (hsPkgs.shake)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      tests = {
        "slick-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.mustache)
            (hsPkgs.pandoc)
            (hsPkgs.shake)
            (hsPkgs.slick)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      };
    }