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
        name = "typed-wire";
        version = "0.2.1.3";
      };
      license = "MIT";
      copyright = "(c) 2015 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "http://github.com/agrafix/typed-wire#readme";
      url = "";
      synopsis = "WIP: Language idependent type-safe communication";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "typed-wire" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.file-embed)
        ];
      };
      exes = {
        "twirec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.typed-wire)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.gitrev)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }