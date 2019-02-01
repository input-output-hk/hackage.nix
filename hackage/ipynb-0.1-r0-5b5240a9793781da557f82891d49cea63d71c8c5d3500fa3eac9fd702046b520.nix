{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ipynb"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "";
      url = "";
      synopsis = "Data structure for working with Jupyter notebooks (ipynb).";
      description = "ipynb defines a data structure for representing Jupyter\nnotebooks, along with ToJSON and FromJSON instances\nfor conversion to and from JSON .ipynb files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.base64-bytestring)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups);
        };
      tests = {
        "roundtrip" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ipynb)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.aeson)
            (hsPkgs.aeson-diff)
            (hsPkgs.bytestring)
            (hsPkgs.microlens-aeson)
            (hsPkgs.microlens)
            (hsPkgs.unordered-containers)
            (hsPkgs.base64-bytestring)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }