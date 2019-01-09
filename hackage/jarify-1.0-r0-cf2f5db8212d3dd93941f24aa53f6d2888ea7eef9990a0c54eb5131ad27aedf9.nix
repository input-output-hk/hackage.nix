{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jarify"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 EURL Tweag";
      maintainer = "felix.raimundo@tweag.io";
      author = "Tweag I/O";
      homepage = "";
      url = "";
      synopsis = "Jarification of Haskell sources";
      description = "Please see README.md";
      buildType = "Custom";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      exes = {
        "jarify" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.jarify)
            (hsPkgs.process)
            (hsPkgs.regex-tdfa)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.zip-archive)
            ];
          };
        };
      };
    }