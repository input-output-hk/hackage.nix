{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hoggl"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "markus1189@gmail.com";
      author = "Markus Hauck";
      homepage = "";
      url = "";
      synopsis = "Bindings to the Toggl.com REST API";
      description = "Toggl is a simple tool for time tracking. This package provides a library\nfor accessing the Toggl API from Haskell, and an example executable that uses\nthe library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-string)
          (hsPkgs.either)
          (hsPkgs.formatting)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.mtl)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "hoggl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.either)
            (hsPkgs.hoggl)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.optparse-applicative)
            (hsPkgs.servant-client)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }