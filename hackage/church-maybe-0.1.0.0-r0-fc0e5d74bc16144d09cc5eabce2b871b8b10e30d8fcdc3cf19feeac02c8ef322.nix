{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "church-maybe";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Isaac Elliott";
      homepage = "https://github.com/qfpl/church-maybe";
      url = "";
      synopsis = "Church encoded Maybe";
      description = "Church encoded Maybe type, exposing the same API as Data.Maybe";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.2") (hsPkgs.deepseq)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.2") (hsPkgs.deepseq);
      };
    };
  }