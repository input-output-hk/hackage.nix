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
        name = "marvin-interpolate";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Justus Adam";
      maintainer = "dev@justus.science";
      author = "JustusAdam";
      homepage = "http://marvin.readthedocs.io/en/latest/interpolation.html";
      url = "";
      synopsis = "Compile time string interpolation a la Scala and CoffeeScript";
      description = "The official documentation can be found on readthedocs <https://marvin.readthedocs.io/en/latest/interpolation.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.text)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "marvin-interpolate-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.marvin-interpolate)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }