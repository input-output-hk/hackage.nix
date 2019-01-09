{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { extra = false; cli = false; yaml = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "etc"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2017 Roman Gonzalez";
      maintainer = "romanandreg@gmail.com";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-etc";
      url = "";
      synopsis = "Declarative configuration spec for Haskell projects";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.protolude)
          (hsPkgs.unordered-containers)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optionals (flags.extra) [
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.edit-distance)
          ]) ++ (pkgs.lib).optional (flags.cli) (hsPkgs.optparse-applicative)) ++ (pkgs.lib).optional (flags.yaml) (hsPkgs.yaml);
        };
      tests = {
        "etc-testsuite" = {
          depends = (([
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.protolude)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-rerun)
            (hsPkgs.etc)
            ] ++ (pkgs.lib).optional (flags.cli) (hsPkgs.optparse-applicative)) ++ (pkgs.lib).optional (flags.yaml) (hsPkgs.yaml)) ++ (pkgs.lib).optional (flags.extra) (hsPkgs.edit-distance);
          };
        };
      };
    }