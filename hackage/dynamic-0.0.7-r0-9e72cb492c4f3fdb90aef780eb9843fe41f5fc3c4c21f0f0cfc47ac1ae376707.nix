{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dynamic"; version = "0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "https://github.com/chrisdone/dynamic#readme";
      url = "";
      synopsis = "A dynamic type for Haskell";
      description = "Want to do dynamically typed programming in Haskell sometimes? Here you go!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.aeson-pretty)
          (hsPkgs.cassava)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.http-conduit)
          ];
        };
      };
    }