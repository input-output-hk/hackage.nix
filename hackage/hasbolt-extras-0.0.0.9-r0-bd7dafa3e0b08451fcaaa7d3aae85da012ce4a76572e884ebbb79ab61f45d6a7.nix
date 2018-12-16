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
        name = "hasbolt-extras";
        version = "0.0.0.9";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, BIOCAD";
      maintainer = "neterebskiy@biocad.ru";
      author = "Bogdan Neterebskii, Vladimir Morozov, Sofya Kochkova, Alexander Sadovnikov";
      homepage = "https://github.com/biocad/hasbolt-extras#readme";
      url = "";
      synopsis = "Extras for hasbolt library";
      description = "Extras for hasbolt library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.free)
          (hsPkgs.hasbolt)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.neat-interpolation)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-lift-instances)
        ];
      };
    };
  }