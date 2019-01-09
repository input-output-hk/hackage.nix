{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "psc-ide"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2015 Christoph Hegemann";
      maintainer = "christoph.hegemann1337@gmail.com";
      author = "Christoph Hegemann";
      homepage = "http://github.com/kRITZCREEK/psc-ide";
      url = "";
      synopsis = "Language support for the PureScript programming language";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.regex-tdfa)
          (hsPkgs.text)
          (hsPkgs.wreq)
          ];
        };
      exes = {
        "psc-ide" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.psc-ide)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            (hsPkgs.network)
            ];
          };
        "psc-ide-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.directory)
            (hsPkgs.psc-ide)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [ (hsPkgs.base) (hsPkgs.psc-ide) (hsPkgs.hspec) ];
          };
        };
      };
    }