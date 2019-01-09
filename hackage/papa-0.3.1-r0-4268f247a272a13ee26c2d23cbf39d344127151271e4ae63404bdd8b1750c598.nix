{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "papa"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/papa";
      url = "";
      synopsis = "Reasonable default import";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nReasonable default import";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.papa-base)
          (hsPkgs.papa-base-export)
          (hsPkgs.papa-base-implement)
          (hsPkgs.papa-bifunctors)
          (hsPkgs.papa-bifunctors-export)
          (hsPkgs.papa-bifunctors-implement)
          (hsPkgs.papa-lens)
          (hsPkgs.papa-lens-export)
          (hsPkgs.papa-lens-implement)
          (hsPkgs.papa-semigroupoids)
          (hsPkgs.papa-semigroupoids-export)
          (hsPkgs.papa-semigroupoids-implement)
          (hsPkgs.papa-x)
          (hsPkgs.papa-x-export)
          (hsPkgs.papa-x-implement)
          ];
        };
      };
    }