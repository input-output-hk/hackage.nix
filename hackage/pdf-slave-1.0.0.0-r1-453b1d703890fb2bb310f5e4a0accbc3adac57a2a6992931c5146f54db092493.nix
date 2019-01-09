{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pdf-slave"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/NCrashed/pdf-slave#readme";
      url = "";
      synopsis = "Tool to generate PDF from haskintex templates and YAML input";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.haskintex)
          (hsPkgs.HaTeX)
          (hsPkgs.shelly)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
          ];
        };
      exes = {
        "pdf-slave" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pdf-slave)
            (hsPkgs.shelly)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }