{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "solga-swagger"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "Copyright (C) 2016 Patrick Chilton";
      maintainer = "chpatrick@gmail.com";
      author = "Patrick Chilton";
      homepage = "https://github.com/chpatrick/solga";
      url = "";
      synopsis = "Swagger generation for Solga";
      description = "Swagger generation for Solga";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.solga)
          (hsPkgs.swagger2)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.mtl)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.dlist)
          (hsPkgs.insert-ordered-containers)
          ];
        };
      };
    }