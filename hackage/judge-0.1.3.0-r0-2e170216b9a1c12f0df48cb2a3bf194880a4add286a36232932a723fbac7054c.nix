{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "judge"; version = "0.1.3.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ns@slak.ws";
      author = "ns@slak.ws";
      homepage = "https://github.com/slakkenhuis/judge#readme";
      url = "";
      synopsis = "Tableau-based theorem prover for justification logic.";
      description = "An implementation of a decision procedure for classical\npropositional logic and justification logic.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.yaml)
          (hsPkgs.pointedlist)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.terminal-size)
          (hsPkgs.utf8-string)
          (hsPkgs.texmath)
          ];
        };
      exes = {
        "judge" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.judge)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.yaml)
            (hsPkgs.attoparsec)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.optparse-applicative)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }