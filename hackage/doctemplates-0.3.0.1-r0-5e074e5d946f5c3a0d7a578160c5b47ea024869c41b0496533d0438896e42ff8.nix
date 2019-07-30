{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "doctemplates"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/doctemplates#readme";
      url = "";
      synopsis = "Pandoc-style document templates";
      description = "A simple text templating system used by pandoc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.unordered-containers)
          (hsPkgs.scientific)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups);
        };
      tests = {
        "doctemplates-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctemplates)
            (hsPkgs.mtl)
            (hsPkgs.aeson)
            (hsPkgs.Glob)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.filepath)
            (hsPkgs.temporary)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            ];
          };
        };
      };
    }