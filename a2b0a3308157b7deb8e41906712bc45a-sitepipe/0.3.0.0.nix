{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "sitepipe";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/sitepipe#readme";
      url = "";
      synopsis = "A simple to understand static site generator";
      description = "";
      buildType = "Simple";
    };
    components = {
      "sitepipe" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.optparse-applicative)
          (hsPkgs.unordered-containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
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
          (hsPkgs.containers)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.2") (hsPkgs.pandoc);
      };
    };
  }