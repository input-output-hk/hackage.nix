{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "criterion-compare"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Ben Gamari";
      maintainer = "ben@well-typed.com, klebinger.andreas@gmx.at";
      author = "Ben Gamari <ben@well-typed.com>";
      homepage = "http://github.com/AndreasPK/criterion-compare";
      url = "";
      synopsis = "A simple tool for visualising differences in Criterion benchmark results";
      description = "Create a html file containing a quick comparison of results for the input files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "criterion-compare" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.Chart)
            (hsPkgs.data-default)
            (hsPkgs.lens)
            (hsPkgs.colour)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.lucid)
            (hsPkgs.Chart-diagrams)
            (hsPkgs.optparse-applicative)
            (hsPkgs.clay)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }