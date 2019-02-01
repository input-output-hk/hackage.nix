{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "acme-circular-containers"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "gelisam+github@gmail.com";
      author = "Samuel Gélineau";
      homepage = "https://github.com/gelisam/acme-circular-containers#readme";
      url = "";
      synopsis = "Spineless containers which are fast to read but inefficient to update";
      description = "Doubly-linked lists, doubly-linked trees, and naïvely-represented graphs, with each vertex literally pointing at its neighbours.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.graph-wrapper) ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
            (hsPkgs.graph-wrapper)
            ];
          };
        };
      };
    }