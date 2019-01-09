{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0.3";
      identifier = { name = "KiCS"; version = "0.9.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Bernd Braßel";
      author = "Bernd Braßel";
      homepage = "http://curry-language.org";
      url = "";
      synopsis = "A compiler from Curry to Haskell";
      description = "This package builds the Curry to Haskell compiler \"kics\".\nThis package also includes many Curry libraries.\nHave a look at the list of modules \"Curry.Module.*\"";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.directory)
          (hsPkgs.old-time)
          (hsPkgs.syb)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.unix)
          (hsPkgs.random)
          ];
        };
      exes = {
        "kics" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.ghc-paths)
            (hsPkgs.process)
            (hsPkgs.curry-base)
            (hsPkgs.curry-frontend)
            ];
          };
        "kicsi" = { depends = [ (hsPkgs.readline) ]; };
        };
      };
    }