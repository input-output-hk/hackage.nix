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
        name = "jenga";
        version = "0.1.1.0";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "erikd@mega-nerd.com";
      author = "Erik de Castro Lopo";
      homepage = "https://github.com/erikd/jenga";
      url = "";
      synopsis = "Generate a cabal freeze file from a stack.yaml";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "jenga" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.jenga)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
          ];
        };
      };
    };
  }