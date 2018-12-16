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
        name = "serpentine";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Author Here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "http://github.com/githubuser/serpentine#readme";
      url = "";
      synopsis = "Simple project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.singletons)
          (hsPkgs.template-haskell)
          (hsPkgs.vinyl)
          (hsPkgs.pringletons)
        ];
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.serpentine)
            (hsPkgs.text)
            (hsPkgs.singletons)
          ];
        };
      };
    };
  }