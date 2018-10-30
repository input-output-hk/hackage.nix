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
      specVersion = "1.23";
      identifier = {
        name = "eternal";
        version = "0.1.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikhail Pukhlikov <cynede@gentoo.org>";
      author = "Mikhail Pukhlikov";
      homepage = "";
      url = "";
      synopsis = "everything breaking the Fairbairn threshold";
      description = "Everything breaking the Fairbairn threshold\nbut in the same time usable in other projects";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          (hsPkgs.base-unicode-symbols)
        ];
      };
    };
  }