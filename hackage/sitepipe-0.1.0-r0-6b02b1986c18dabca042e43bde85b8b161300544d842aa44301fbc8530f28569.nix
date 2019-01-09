{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sitepipe"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/sitepipe#readme";
      url = "";
      synopsis = "A simple to understand static site generator";
      description = "A simple to understand static site generator";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.optparse-applicative)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.optparse-generic)
          (hsPkgs.pandoc)
          (hsPkgs.yaml)
          (hsPkgs.mustache)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.exceptions)
          (hsPkgs.Glob)
          (hsPkgs.lens-aeson)
          (hsPkgs.lens)
          (hsPkgs.aeson)
          (hsPkgs.shelly)
          (hsPkgs.MissingH)
          ];
        };
      exes = {
        "sitepipe-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sitepipe)
            (hsPkgs.lens)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.mustache)
            ];
          };
        };
      tests = {
        "sitepipe-test" = { depends = [ (hsPkgs.base) (hsPkgs.sitepipe) ]; };
        };
      };
    }