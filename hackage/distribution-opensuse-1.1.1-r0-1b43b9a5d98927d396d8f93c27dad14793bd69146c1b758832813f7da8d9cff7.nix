{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "distribution-opensuse"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons";
      homepage = "https://github.com/peti/distribution-opensuse/";
      url = "";
      synopsis = "Types, functions, and tools to manipulate the openSUSE distribution";
      description = "This library is a loose collection of types, functions, and tools that\nusers and developers of the\n<https://opensuse.org/ openSUSE Linux distribution> might find useful.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Diff)
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.extra)
          (hsPkgs.foldl)
          (hsPkgs.hashable)
          (hsPkgs.hsemail)
          (hsPkgs.mtl)
          (hsPkgs.parsec-class)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.turtle)
          ];
        };
      exes = {
        "guess-changelog" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.distribution-opensuse)
            (hsPkgs.text)
            (hsPkgs.turtle)
            ];
          };
        };
      tests = {
        "test-strip-space" = {
          depends = [ (hsPkgs.base) (hsPkgs.distribution-opensuse) ];
          };
        };
      };
    }