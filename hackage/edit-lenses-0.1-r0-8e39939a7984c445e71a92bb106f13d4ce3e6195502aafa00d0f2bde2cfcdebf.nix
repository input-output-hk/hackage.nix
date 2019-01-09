{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "edit-lenses"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel@wagner-home.com";
      author = "Daniel Wagner";
      homepage = "";
      url = "";
      synopsis = "Symmetric, stateful edit lenses";
      description = "An implementation of the ideas of the paper \"Edit Lenses\",\navailable at http://dmwit.com/papers/201107EL.pdf,\ntogether with a very simple demo program for a simple\nstring edit lens.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.Diff)
          (hsPkgs.lattices)
          (hsPkgs.mtl)
          (hsPkgs.regex-pcre)
          ];
        };
      exes = {
        "lens-editor" = {
          depends = [ (hsPkgs.base) (hsPkgs.edit-lenses) (hsPkgs.gtk) ];
          };
        };
      };
    }