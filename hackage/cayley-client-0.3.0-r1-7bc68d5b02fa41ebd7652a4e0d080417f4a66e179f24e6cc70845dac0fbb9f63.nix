{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cayley-client"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2016 - Michel Boucey";
      maintainer = "michel.boucey@cybervisible.fr";
      author = "Michel Boucey";
      homepage = "https://github.com/MichelBoucey/cayley-client";
      url = "";
      synopsis = "A Haskell client for the Cayley graph database";
      description = "cayley-client implements the RESTful API of the Cayley graph database.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.lens-aeson)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.hspec)
            (hsPkgs.base)
            (hsPkgs.cayley-client)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }