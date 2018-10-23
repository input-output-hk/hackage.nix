{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "papa-semigroupoids-export";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/papa";
      url = "";
      synopsis = "export useful functions from `semigroupoids`.";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nexport useful functions from `semigroupoids`.";
      buildType = "Simple";
    };
    components = {
      "papa-semigroupoids-export" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroupoids)
        ];
      };
    };
  }