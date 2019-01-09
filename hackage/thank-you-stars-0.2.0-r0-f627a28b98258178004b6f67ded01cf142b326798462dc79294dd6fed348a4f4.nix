{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "thank-you-stars"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 TAKAHASHI Yuto";
      maintainer = "TAKAHASHI Yuto <ytaka23dev@gmail.com>";
      author = "TAKAHASHI Yuto <ytaka23dev@gmail.com>";
      homepage = "https://github.com/y-taka-23/thank-you-stars#readme";
      url = "";
      synopsis = "Give your dependencies stars on GitHub!";
      description = "A tool for starring GitHub repositories. It detects dependent libraries\nwhich are hosted on GitHub via .cabal files,\nand stars the repositories all at once.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hackage-db)
          (hsPkgs.req)
          (hsPkgs.split)
          (hsPkgs.text)
          ];
        };
      exes = {
        "thank-you-stars" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.thank-you-stars)
            ];
          };
        };
      tests = {
        "thank-you-stars-spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.thank-you-stars)
            ];
          };
        };
      };
    }