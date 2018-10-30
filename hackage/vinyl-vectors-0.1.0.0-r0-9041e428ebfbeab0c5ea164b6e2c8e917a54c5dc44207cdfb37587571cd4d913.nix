{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "vinyl-vectors";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Author Here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "http://github.com/githubuser/vinyl-vectors#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vinyl)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.constraints)
          (hsPkgs.text)
        ];
      };
      exes = {
        "sorting" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.vinyl-vectors)
            (hsPkgs.base)
            (hsPkgs.vector-algorithms)
            (hsPkgs.text)
            (hsPkgs.vinyl)
            (hsPkgs.microlens)
          ];
        };
      };
    };
  }