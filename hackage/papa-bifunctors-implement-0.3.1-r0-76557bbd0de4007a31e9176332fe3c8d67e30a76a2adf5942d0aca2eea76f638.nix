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
        name = "papa-bifunctors-implement";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/papa";
      url = "";
      synopsis = "useful `bifunctors` functions reimplemented";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nuseful `bifunctors` functions reimplemented";
      buildType = "Simple";
    };
    components = {
      "papa-bifunctors-implement" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
        ];
      };
    };
  }