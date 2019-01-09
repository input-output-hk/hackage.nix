{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "concraft-hr"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vjeran.crnjak@gmail.com";
      author = "Vjeran Crnjak";
      homepage = "https://github.com/vjeranc/concraft-hr";
      url = "";
      synopsis = "Part-of-speech tagger for Croatian";
      description = "A part-of-speech tagger for Croatian based on the concraft library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.concraft)
          (hsPkgs.tagset-positional)
          (hsPkgs.sgd)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.network)
          (hsPkgs.lazy-io)
          (hsPkgs.split)
          (hsPkgs.moan)
          (hsPkgs.double-conversion)
          ];
        };
      exes = { "concraft-hr" = { depends = [ (hsPkgs.cmdargs) ]; }; };
      };
    }