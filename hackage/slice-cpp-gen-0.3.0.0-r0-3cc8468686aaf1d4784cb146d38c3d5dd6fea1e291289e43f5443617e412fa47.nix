{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "slice-cpp-gen"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Paul Koerbitz 2013";
      maintainer = "paul.koerbitz@gmail.com";
      author = "Paul Koerbitz";
      homepage = "https://github.com/paulkoerbitz/slice-cpp-gen";
      url = "";
      synopsis = "Generate C++ skeletons from slice files";
      description = "Generate C++ skeletons from slice files";
      buildType = "Simple";
      };
    components = {
      exes = {
        "slice-cpp-gen" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.MissingH)
            (hsPkgs.language-slice)
            ];
          };
        };
      };
    }