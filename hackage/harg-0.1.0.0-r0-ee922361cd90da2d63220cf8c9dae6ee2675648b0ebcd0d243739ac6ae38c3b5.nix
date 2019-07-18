{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "harg"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Alex Peitsinis";
      maintainer = "alexpeitsinis@gmail.com";
      author = "Alex Peitsinis";
      homepage = "https://github.com/alexpeits/harg";
      url = "";
      synopsis = "Haskell program configuration from multiple sources";
      description = "Please see the README on GitHub at <https://github.com/alexpeits/harg#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.barbies)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.higgledy)
          (hsPkgs.optparse-applicative)
          (hsPkgs.text)
          (hsPkgs.yaml)
          ];
        };
      tests = {
        "harg-test" = { depends = [ (hsPkgs.base) (hsPkgs.harg) ]; };
        "readme-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.barbies)
            (hsPkgs.higgledy)
            (hsPkgs.optparse-applicative)
            (hsPkgs.harg)
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit))
            ];
          };
        };
      };
    }