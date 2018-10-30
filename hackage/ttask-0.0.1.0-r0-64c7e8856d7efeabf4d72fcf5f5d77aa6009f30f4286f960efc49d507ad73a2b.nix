{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ttask";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Tokiwo Ousaka";
      maintainer = "its.out.of.tune.this.my.music@gmail.com";
      author = "Tokiwo Ousaka";
      homepage = "https://github.com/tokiwoousaka/ttask#readme";
      url = "";
      synopsis = "This is task management tool for yourself, that inspired by scrum.";
      description = "Please see README.md (ja)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.extra)
          (hsPkgs.safe)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.lens)
          (hsPkgs.either)
          (hsPkgs.transformers)
          (hsPkgs.strict)
        ];
      };
      exes = {
        "ttask" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.ttask)
            (hsPkgs.optparse-declarative)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "ttask-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ttask)
          ];
        };
      };
    };
  }